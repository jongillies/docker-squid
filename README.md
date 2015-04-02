#docker squid

This is a Dockerfile to set up Squid3 Proxy

Build from docker file:

```
git clone https://github.com/jongillies/docker-squid.git
cd docker-squid
docker build -t squid .
```

Run from hub.docker.com:

```
docker run -d  \
    -v /yourdata/dir:/var/spool/squid3 \
    -p 3128:3128 --name squid supercoder/squid
```

/your/config/dir must contain squid.conf
