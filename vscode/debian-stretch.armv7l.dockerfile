FROM couven92/vscode:build-dep-base-armv7l

ENV npm_config_arch arm

RUN yarn run npx gulp vscode-linux-arm-min
RUN yarn run npx gulp vscode-linux-arm-build-deb