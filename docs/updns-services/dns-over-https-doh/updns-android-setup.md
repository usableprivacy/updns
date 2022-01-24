---
description: >-
  Use the updns DoH service with your Android device to reduce the tracking of
  your mobile apps and protect against DNS analysis from your Internet service
  provider.
---

# updns Android Setup

## Basic Setup with Google's Jigsaw Intra App

### 1. Install the [Jigsaw Intra App](https://play.google.com/store/apps/details?id=app.intra) on your Android device

### 2. Change the Intra DoH Server to [https://adfree.usableprivacy.net/query](https://adfree.usableprivacy.net/query-dns)

![Change Intra default DoH server to adfree updns DoH server](../../.gitbook/assets/01\_intra\_server\_config.png)

### 3. Verify Intra is working with the updns DoH service

![](../../.gitbook/assets/02\_intra\_working.png)

## Recommended Additional Intra Settings

### **Verify advertising and tracker domains are filtered**

The updns service responds with `0.0.0.0` for filtered domains.

![Show recent queries in Intra Android app.](../../.gitbook/assets/03\_recent\_queries.png)

In the following screenshot you see that Snapchat App Analytics is blocked by the updns DoH server.

![](../../.gitbook/assets/04\_blocked\_query.png)

### Recommended whitelist settings for Intra on Android

Our adfree DoH server works best against tracking by mobile apps. DNS-based blocking is very coarse-grained. We therefore recommend you use browsers with blocking extensions and use our DNS service primarily to **counter mobile app tracking**. You can exclude e.g. your mobile browser from Intra:



![Exclude mobile browsers from Intra and rely on browser tracker blocking.](../../.gitbook/assets/05\_exclude\_apps.png)

