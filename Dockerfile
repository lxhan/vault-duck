FROM caddy:builder AS builder

RUN xcaddy build --with github.com/caddy-dns/duckdns

FROM caddy:2.6.3

COPY --from=builder /usr/bin/caddy /usr/bin/caddy