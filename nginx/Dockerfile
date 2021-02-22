FROM nginx:latest

COPY ./entrypoint.sh /usr/local/bin

RUN chmod +x /usr/local/bin/entrypoint.sh

ARG DOMAIN="example.com"
ENV DOMAIN=${DOMAIN}

ENTRYPOINT "/usr/local/bin/entrypoint.sh"
