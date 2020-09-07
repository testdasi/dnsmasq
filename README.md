# dnsmasq
Simple DNS server with dnsmasq

## Usage
1. Create a dnsmasq.conf file on the Docker host
1. Docker run
1. Visit http://ip:port, authenticate with HTTP_USER/HTTP_PASS to see high level web

## Example with Unraid
    docker run -d \
        --name dnsmasq \
        -p 53:53/udp \
        -p 5380:8080 \
        -v /mnt/user/appdata/dnsmasq/dnsmasq.conf:/etc/dnsmasq.conf \
        --log-opt "max-size=1m" \
        -e "HTTP_USER=HTTP_USER" \
        -e "HTTP_PASS=HTTP_PASS" \
        --restart always \
        testdasi/dnsmasq
