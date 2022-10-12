FROM alpine:3.16

RUN apk update \
 && apk upgrade \
 && apk add --no-cache nginx

COPY default.conf /etc/nginx/http.d/default.conf

CMD ["nginx", "-g", "daemon off;"]
