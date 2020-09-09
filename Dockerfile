FROM alpine:latest

# install dnsmasq
RUN apk -U upgrade \
    && apk --no-cache add dnsmasq \
    && mkdir -p /etc/default/ \
    && echo -e "ENABLED=1\nIGNORE_RESOLVCONF=yes" > /etc/default/dnsmasq \
    && apk cache clean

ENTRYPOINT ["dnsmasq","--no-daemon"]
