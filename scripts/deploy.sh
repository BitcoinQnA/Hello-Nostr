#!/usr/bin/env bash
# Build Hello Nostr and publish it to the live server.
#
#   scripts/deploy.sh            build, back up the live site, sync, smoke test
#   scripts/deploy.sh --dry-run  build and show what would change, touch nothing
#
# A push to GitHub does not update hellonostr.xyz. This script does.
set -euo pipefail

HOST="root@162.252.199.63"
WEBROOT="/var/www/hellonostr.xyz"
SITE="https://hellonostr.xyz"
DRY_RUN=false
[[ "${1:-}" == "--dry-run" ]] && DRY_RUN=true

cd "$(dirname "$0")/.."
export PATH="$HOME/.rbenv/shims:$PATH"

if [[ -n "$(git status --porcelain)" ]]; then
  echo "Warning: uncommitted changes will be published too." >&2
fi

BUILD="$(mktemp -d -t hellonostr-build)"
trap 'rm -rf "$BUILD"' EXIT

echo "Building..."
TZ=UTC JEKYLL_ENV=production bundle exec jekyll build --quiet --destination "$BUILD"

RSYNC=(rsync -rlt --checksum --delete --itemize-changes --exclude ".DS_Store")

if $DRY_RUN; then
  "${RSYNC[@]}" --dry-run "$BUILD/" "$HOST:$WEBROOT/" | grep -v '^\.d' || true
  exit 0
fi

STAMP="$(date -u +%Y-%m-%d-%H%M)"
echo "Backing up the live site to /root/recovery/hellonostr-$STAMP ..."
ssh -o BatchMode=yes "$HOST" "cp -a $WEBROOT /root/recovery/hellonostr-$STAMP"

echo "Syncing..."
"${RSYNC[@]}" "$BUILD/" "$HOST:$WEBROOT/" | grep -v '^\.d' || true
ssh -o BatchMode=yes "$HOST" "cd $WEBROOT && chown -R webdeploy:www-data . && find . -type d -exec chmod 755 {} + && find . -type f -exec chmod 644 {} +"

echo "Smoke test..."
fail=0
for path in / /start /zaps /amber /.well-known/nostr.json; do
  code="$(curl -s -o /dev/null -w '%{http_code}' -m 20 "$SITE$path")"
  echo "  $code $path"
  [[ "$code" == "200" ]] || fail=1
done
if [[ $fail -ne 0 ]]; then
  echo "Smoke test failed. The previous site is in /root/recovery/hellonostr-$STAMP on the server." >&2
  exit 1
fi
echo "Live: $SITE"
