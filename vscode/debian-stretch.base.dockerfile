FROM debian:stretch

ENV DEBIAN_FRONTEND noninteractive

RUN     apt-get update && apt-get install -y apt-utils \
    &&  apt-get install -y git tar build-essential lsb-release wget curl \
    && 	curl -sL https://deb.nodesource.com/setup_10.x | bash - \
    && 	apt-get install -y nodejs \
    && 	curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
    && 	echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
    && 	apt-get update && apt-get install --yes yarn \
    && 	apt-get install --yes python make pkg-config gcc libx11-dev \
            libxkbfile-dev libsecret-1-dev fakeroot rpm


RUN mkdir -p /vscode && curl -sSL "https://github.com/microsoft/vscode/archive/1.38.0.tar.gz" \
        | tar -xz -C /vscode

WORKDIR /vscode/vscode-1.38.0

ENV DEBIAN_FRONTEND teletype

RUN yarn add npm
