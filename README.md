# [Usable Privacy DNS (updns)](https://docs.usableprivacy.com/updns)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/usableprivacy/updns)
![GitHub](https://img.shields.io/github/license/usableprivacy/updns)

**updns** is a privacy-protecting DNS resolver with advertising and tracker blocking.
This code powers **[adfree.usableprivacy.net](https://docs.usableprivacy.com/updns)** a public, adblocking 
and non-logging DoH/DoT service.

# Deploy a custom updns setup
This repository provides the source code to our public filtering encrypted DNS setup.
Basic requirements:
* [docker](https://github.com/docker/docker-ce)
* [docker-compose](https://github.com/docker/compose)
## Setup
1) Fetch the latest **updns** source code from Github
    ```
    git clone https://github.com/usableprivacy/updns.git
    ```
2) Copy `.env_example` to `.env` and adapt it for your needs:
    * `LETSENCRYPT_*` environment variables for certbot
    * `FQDN` domain to use for your DoH / DoT server
3) Create a `.ini` file with our DNS API credentials for `certbot`
4) Run **updns**
   ```
   docker-compose up
   ```

## Basic updns building blocks
* [docker-compose.yml](docker-compose.yml) spawns ad-blocking DoH + DoT servers.
   * The Docker compose setup is ready for deployment with `traefik2` (edge routing + TLS)
* Basic **updns** Services
   * [cryptodns](cryptodns) deploys `dnsdist` in Docker with DoH and DoT endpoints.
   * [letsencrypt](letsencrypt) deploys `certbot` to get valid TLS certificates.
   * [nameserver](nameserver) deploys `dnsmasq` in Docker for filtering, see [blacklist.conf](nameserver/conf/blacklist.conf)
 * Other Service(s)
    * [staticweb](staticweb) simple static website
---
[Nysos Tech e.U.](https://nysos.net), Markus Donko-Huber 2020
