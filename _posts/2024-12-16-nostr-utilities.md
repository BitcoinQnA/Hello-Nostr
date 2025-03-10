---
layout: post
title: Nostr Utilities
description: A run down of some popular Nostr utility categories.
date: 2024-12-16 15:01:35 +0300
image: '/images/utilities1.png'
tags: [Other]
tags_color: '#f14979'
---

So you've got yourself [started](/start), you're up to speed with the latest Nostr [jargon](/glossary) and you've learned the basics about the [protocol](/101), but you're left wanting more!? Well, look no further! This post contains a useful list of Nostr based utilities than can enhance your experience in and around the Nostr protocol. 

## Search and Discovery

Getting started with Nostr can sometimes feel like a lonely journey, particularly if you're the first of your friends and family to discover how awesome it can be! These tools can help you discover new content, connect with existing follows from other networks and just generally have a poke around at the different types of content Nostr has to offer.

{: .note }
Have a hobby or existing community elsewhere? Have a search for it here to find others with shared interests

- **[Nostr.Band](https://nostr.band/)** - Search for people, posts, media and stats literally anything Nostr has to offer!
- **[Nostr.Directory](https://nostr.directory/)** - Find your Twitter follows on Nostr
- **[Awesome Nostr](https://github.com/aljazceru/awesome-nostr#implementations)** - Extensive list of Relay software
- **[Nostr View](https://nostrview.com/)** - Generic Nostr search


![Nostr Band](/images/nostrband.png)
*Nostr.Band showing trending posts*

<br/>

## Relays

Relays might not be the sexiest of topics, particularly for newcomers to the network, but they are a crucial part of what makes Nostr great. As you become more competent, you'll want to customize your relay selection and maybe even run your own! Here are some great starting points.

> Running a personal relay is a powerful way to improve the redundancy of your Nostr events.
>
> <cite>– QnA</cite>

- **[Nostr.Watch](https://next.nostr.watch/)** - Browse, test and research Nostr relays
- **[Nostrwat.ch](https://nostrwat.ch/)** - List of active Nostr relays
- **[Advanced Nostr Search](https://advancednostrsearch.vercel.app/)** - Targetted search with date ranges
- **[Nostr.Wine](https://nostr.wine/)** - Reliable paid Relay

<div class="gallery-box">
  <div class="gallery gallery-columns-2">
    {% include img.html src ="/images/umbrelrelay.png" alt="Games" caption="Umbrel Nostr Relay Software" %}
    {% include img.html src ="/images/nostrwatchrelays2.png" alt="Nostr Watch Relay Map" %}
  </div>
  <p>Umbrel Node Relay + Nostr Watch Relay Map</p>
</div>

<br/>

## NIP-05 Identity Services

Your nPub, or public key (that long string of letters and numbers) is your ‘official’ Nostr ID, but it’s not exactly catchy. NIP-05 identifiers are a human-readable and easily sharable way to have people find you on Nostr. They look like an email address, like qna@hellonostr.xyz. If you have your own domain
and web server, you can easily [create your own](https://thebitcoinmanual.com/articles/nostr-account-nip-05-verified/) NIP-05 identifier in just a few minutes. If you don't, you'll want to leverage one of the many free or paid solutions.

{: .tip }
Make yourself easier to find on Nostr with a NIP-05 identifier

- **[Bitcoiner.Chat](https://bitcoiner.chat/)** - Free service operated by [QnA](https://primal.net/p/npub15c88nc8d44gsp4658dnfu5fahswzzu8gaxm5lkuwjud068swdqfspxssvx)
- **[Nostr Plebs](https://nostrplebs.com/)** - Paid service with extra features
- **[Alby](https://getalby.com/)** - Lightning wallet with + NIP-05 solution
- **[Nostr Address](https://en.nostraddress.com/)** - Paid service with extra features
- **[Zaps.Lol](https://zaps.lol/)** - Free service

<div style="text-align: center;">
  <img src="/images/zapslol.png" alt="Zaps.Lol">
  <p><i>Zaps.lol NIP-05 Sign Up Page</i></p>
</div>



<br/>

## Key Management

Your private key (or nsec) it the key to your Nostr world. It is what allows you to access and interact with your social graph from any client. It doesn't matter if that client is a micro-blogging app like Amethyst, a podcast app like Fountain, or a P2P marketplace like Plebeian  Market, your nsec is paramount to 
those interactions. Should your nsec be lost, or fall into the wrong hands, whoever then holds a copy can access Nostr and pretend to be you, meaning that you'll need to start again with a new keypair. Not a nice situation to find yourself in, so treat your nsec VERY carefully.

{: .caution }
Your private key IS your Nostr identity. Treat it with extreme care and do not share it.

- **[Alby](https://getalby.com/)** - Browser extension enabling you to sign into web app without sharing the private key 
- **[Nos2x](https://github.com/fiatjaf/nos2x)** - Another browser extension key manager
- **[Keys.Band](https://keys.band/)** - Another browser extension key manager
- **[Amber](https://github.com/greenart7c3/amber)** - Android app for safe nsec storage. Can talk to other clients on the same phone to log in and sign events
- **[Nostr Signing Device](https://github.com/lnbits/nostr-signing-device)** - Dedicated device to store your nsec
- **[Passport](https://docs.foundation.xyz)** - Hardware wallet for offline and deterministic nsec generation and storage

![Passport](/images/passport1.png)
*Passport Hardware Wallet generating a Nostr Private Key*


<br/>

## Zap Tools

Zaps are one of the most fun parts of Nostr. Never before have we been able to send fractions of a penny, instantly to our friends becuase their meme made us laugh, or their blog post was very insightful. Zaps use Bitcoin’s Lightning Network, a faster and cheaper way to move Bitcoin around. To Zap someone, you need a Lightning wallet linked to your Nostr client. Some clients, like Primal, ship with their own custodial wallet to make getting started a breeze. Most clients also allow more advanced users to connect an existing Lightning Wallet to reduce reliance and trust in the client provider.

- **[Alby](https://getalby.com/)** - Browser extension and self-custodial Lightning wallet 
- **[LNBits](https://github.com/lnbits/lnbits)** - A Zap server running on your own Bitcoin node
- **[BTCPay Server](https://btcpayserver.org/)** - Another Zap server running on your own Bitcoin node
- **[Zeus](https://github.com/ZeusLN/zeus)** - Zap compatible self-custodial mobile Lightning wallet
- **[Nostr Wallet Connect](https://nwc.dev/)** - Communication protocol between Lightning wallets and Nostr apps
- **[Ecash Wallets](https://github.com/cashubtc/awesome-cashu)** - Custodial Ecash based wallets that are interoperable with Lightning and Nostr (Funds may be at risk)
- **[Wallet of Satoshi](https://www.walletofsatoshi.com/)** - Custodial Lightning wallet (Funds may be at risk)

![Zaps](/images/zaps1.png)
*Wallet of Satoshi, Zeus + MiniBits*

---

If you found this post useful, please share it with your peers and consider following and zapping me on Nostr. If you write to me and let me know 
that you found me via this post, I'll be sure to Zap you back! ⚡️



<div class="button-container">
  <button
    id="nostr-zap-target"
    class="hero__button button button--primary nostr-zap-button nostr-zap-button--primary"
    data-npub="npub15c88nc8d44gsp4658dnfu5fahswzzu8gaxm5lkuwjud068swdqfspxssvx"
    data-relays="wss://relay.damus.io,wss://relay.snort.social,wss://nostr.wine,wss://relay.nostr.band"
  >
    Zap Me ⚡️
  </button>

  <a
    href="https://primal.net/p/npub15c88nc8d44gsp4658dnfu5fahswzzu8gaxm5lkuwjud068swdqfspxssvx"
    target="_blank"
    rel="noopener noreferrer"
    class="hero__button button button--primary"
  >Follow Me ✅</a>
</div>