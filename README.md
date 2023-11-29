# docker-uwsgi

## A simple docker image with an uwsgi python server, proxied by nginx and unix://.sock.

## Install

Clone the repo using ´git clone https://github.com/HeyJoFlyer/docker-uwsgi.git´ and ´cd docker-uwsgi´.

To start the uwsgi server:
´´´bash
docker compose up -d
´´´

To start nginx you need to ´cd nginx´ and:
´´´bash
docker compose up -d
´´´

### Rebuilding image
To rebuild the image (e.g when Dockerfile has been edited) you need to:
´´´bash
docker compose up --build -d
´´´
## Customizing server

You need to create tls certificate and put them into ´nginx/certs´. To change what the python server does you need to change server.py.