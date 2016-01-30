# Caddy for armhf

[![Build Status](https://drone.thisone.rocks/api/badges/armhf-docker-library/caddy/status.svg)](https://drone.thisone.rocks/armhf-docker-library/caddy)

See [armhfbuild/caddy](https://hub.docker.com/r/armhfbuild/caddy/) on Docker Hub.


## Usage

To configure edit `Caddyfile`.

Example to run Caddy:
```
docker run \
  --detach \
  --name caddy \
  --volume $PWD/Caddyfile:/Caddyfile \
  --volume $PWD/certs:/root/.caddy \
  --volume $PWD/www:/var/www \
  --link drone \
  --link registry \
  --publish 80:80 \
  --publish 443:443 \
  local/caddy
```
