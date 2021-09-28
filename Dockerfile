FROM php:8.0.11-alpine

LABEL org.opencontainers.image.authors="contact@ethersys.fr"
LABEL org.opencontainers.image.source="https://github.com/ethersys/ethersys-docker-wfpc"
LABEL org.opencontainers.image.description="Minimalist Alpine container to run WFPC"

RUN apk add --update git

RUN git clone https://github.com/quickshiftin/wfpc.git /usr/local/wfpc

WORKDIR /usr/local/wfpc

ENTRYPOINT ["php", "-f", "wfpc", "--"]
