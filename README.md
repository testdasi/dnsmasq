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

## Notes
* If you like my work, [a donation to my burger fund](https://paypal.me/mersenne) is very much appreciated.

[![Donate](https://raw.githubusercontent.com/testdasi/testdasi-unraid-repo/master/donate-button-small.png)](https://paypal.me/mersenne). 

