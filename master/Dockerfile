FROM armhfbuild/golang:1.5.3

RUN go get github.com/mholt/caddy

WORKDIR /
COPY ./Caddyfile /

EXPOSE 80 443
CMD ["caddy"]
