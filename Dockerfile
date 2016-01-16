FROM alpine:3.2

# ENV CADDY_VERSION 0.8
ENV CADDY_FEATURES ""
#^ "cors,git,hugo,ipfilter,jsonp,search"

RUN apk add --update curl \
  && rm -rf /var/cache/apk/*

RUN curl -SL "https://caddyserver.com/download/build?os=linux&arch=arm&features=$CADDY_FEATURES" \
    | tar -xz -C /usr/bin \
  && chmod u+x /usr/bin/caddy

RUN mkdir -p /var/www \
  && printf "0.0.0.0\nroot /var/www\nbrowse\n" > /Caddyfile

EXPOSE 80 443 2015
CMD ["caddy"]
