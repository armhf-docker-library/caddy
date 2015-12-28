
## Tasks:
- [x] create `Dockerfile.build` to run on `armhf`
- [ ] adapt `Dockerfile` to `armfh`
- [ ] Drone all that

## Development

```
docker build -t local/caddy .
```

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
  --publish 80:80 \
  --publish 443:443 \
  local/caddy
```
