FROM ubuntu:xenial
LABEL maintainer='Peter Wu <piterwu@outlook.com>'

ENV TERM=xterm \
    DEBIAN_FRONTEND=noninteractive

RUN rm /bin/sh && \
    ln -s /bin/bash /bin/sh && \
    sed -i "s/mesg n/tty -s \&\& mesg n/" /root/.profile

RUN dpkg --add-architecture i386 && \
    apt-get update && \
    apt-get install -y --no-install-recommends locales && \
    echo 'zh_CN.UTF-8 UTF-8' > /etc/locale.gen && \
    locale-gen && \
    echo -e 'LANG="zh_CN.UTF-8"\nLANGUAGE="zh_CN:zh"\n' > /etc/default/locale && \
    source /etc/default/locale && \
    apt-get install -y --no-install-recommends wget software-properties-common fonts-wqy-microhei && \
    wget -nc http://dl.winehq.org/wine-builds/Release.key && \
    apt-key add Release.key && \
    apt-add-repository http://dl.winehq.org/wine-builds/ubuntu/ && \
    apt-get update && \
    apt-get install -y --install-recommends winehq-devel && \
    apt-get -y remove wget software-properties-common && \
    apt-get -y autoremove && apt-get clean -y && apt-get autoclean -y && \
    rm -rf var/lib/apt/lists/* var/cache/apt/* var/log/*

ENV LANGUAGE=zh_CN.UTF-8 \
    LC_ALL=zh_CN.UTF-8 \
    LANG=zh_CN.UTF-8 \
    TZ=UTC-8
    
ENTRYPOINT ["wine"]