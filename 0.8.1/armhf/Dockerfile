FROM armhfbuild/alpine:3.3

WORKDIR /
COPY ./caddy /usr/bin/
COPY ./Caddyfile /

EXPOSE 80 443
CMD ["caddy"]
