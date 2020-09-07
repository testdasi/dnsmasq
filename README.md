# dnsmasq
Simple DNS server with dnsmasq

## Usage
1. Create a dnsmasq.conf file on the Docker host
1. Docker run

## Example with Unraid
    docker run -d \
        --name dnsmasq \
        -p 8053:53/udp \
        -p 8053:53/tcp \
        -v /mnt/user/appdata/dnsmasq/dnsmasq.conf:/etc/dnsmasq.conf \
        --log-opt "max-size=1m" \
        --restart always \
        testdasi/dnsmasq
