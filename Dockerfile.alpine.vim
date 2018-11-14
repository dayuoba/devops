FROM alpine:3.8

RUN apk update
RUN apk upgrade
RUN apk add curl git vim
CMD curl http://j.mp/spf13-vim3 -L -o - | sh