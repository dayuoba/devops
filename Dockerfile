# Base image
FROM alpine:3.8
RUN apk update
# basic tools
RUN apk add --update --no-cache zsh git curl vim openssh
# oh-my-zsh config
ADD ./oh_my_zsh.sh /root
RUN sh /root/oh_my_zsh.sh

WORKDIR /home
ADD ./alpine_startup.sh /
CMD sh /alpine_startup.sh