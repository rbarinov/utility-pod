FROM ubuntu:18.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && \
    apt-get install -yqq \
        git \
        curl \
        vim \
        unzip \
        zsh \
        wget \
        telnet \
        dnsutils \
    && \
    rm -rf /var/lib/apt/lists/*

ENV TERM xterm
ENV ZSH_THEME agnoster

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh || true

CMD [ "/bin/zsh" ]
