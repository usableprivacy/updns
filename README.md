# [Usable Privacy DNS (updns)](https://docs.usableprivacy.com/updns)

Privacy-protecting DNS resolver with advertising and tracker blocking.

# Deploy a custom updns setup
This repository provides the source code to our public filtering encrypted DNS setup.
Requirements: [docker](https://github.com/docker/docker-ce) and [docker-compose](https://github.com/docker/compose).
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
   * The Docker compose setup is prepared for deployment with `traefik2` (edge routing + TLS)
* Basic **updns** Services
   * [doh](cryptodns) deploys `dnsdist` in Docker with DoH and DoT endpoints.
   * [letsencrypt](letsencrypt) deploys certbot to get valid TLS certificates.
   * [nameserver](nameserver) deploys `dnsmasq` in Docker for filtering, ruleset see [blacklist.conf](nameserver/conf/blacklist.conf)
 * Other Services
    * [staticweb](website) is our current [website](https://usableprivacy.net)
---
[Nysos Tech e.U.](https://nysos.net), Markus Donko-Huber 2020
