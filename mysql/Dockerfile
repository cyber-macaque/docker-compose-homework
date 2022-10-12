FROM alpine:latest

WORKDIR /mysql

RUN apk add --no-cache mysql mysql-client

COPY startup.sh /startup.sh

CMD ["/startup.sh"]