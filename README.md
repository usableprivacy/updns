# [Usable Privacy DNS (updns)](https://docs.usableprivacy.com/dns)
![GitHub release (latest by date)](https://img.shields.io/github/v/release/usableprivacy/updns)
![GitHub Workflow Status](https://img.shields.io/github/actions/workflow/status/usableprivacy/updns/main.yml?branch=master)
![GitHub](https://img.shields.io/github/license/usableprivacy/updns)

**updns** is a privacy-protecting DNS resolver with advertising and tracker blocking.
This repo powers **[adfree.usableprivacy.net](https://docs.usableprivacy.com/dns)** a public, adblocking
and non-logging DoH/DoT service.

# Deploy a custom updns setup
This repository provides the source code to our public filtering encrypted DNS setup.
Basic requirements:
* [docker](https://github.com/docker/docker-ce)
* [docker-compose](https://github.com/docker/compose)
## Setup
1) Fetch the latest **updns** source code from GitHub
    ```
    git clone https://github.com/usableprivacy/updns.git
    ```
2) Copy `.env_example` to `.env` and adapt it for your needs:
    * `LETSENCRYPT_*` environment variables for certbot
    * `FQDN` domain to use for your DoH / DoT server
3) Create a `.ini` file with our DNS API credentials for `certbot`
4) Deploy **updns** services
   ```
   docker-compose up
   ```

## Basic updns building blocks
* [docker-compose.yml](docker-compose.yml) deploys ad-blocking DoH + DoT servers.
* Basic **updns** Services
    * [cryptodns](cryptodns) deploys `dnsdist` in Docker with DoH and DoT endpoints.
    * [letsencrypt](letsencrypt) deploys `certbot` to get valid TLS certificates.
    * [recursor](recursor) deploys `pdns-recursor` in Docker for filtering, see [filterlist.lua](recursor/conf/filterlist.lua)
---
[Nysos Tech e.U.](https://nysos.net), Markus Donko-Huber 2024
