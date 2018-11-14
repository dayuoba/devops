# Base image
FROM alpine:3.8
RUN apk update
# basic tools
RUN apk add --update --no-cache zsh git curl vim byobu tzdata openssh

# oh-my-zsh config
ADD ./oh_my_zsh.sh /root
RUN sh /root/oh_my_zsh.sh
# vim
WORKDIR /home

# environment configs
# it's for byobu start with zsh
COPY ./.tmux.conf /root/.byobu/.tmux.conf 
ADD ./alpine_startup.sh /


ENV TZ=Asia/Shanghai
CMD sh /alpine_startup.sh

