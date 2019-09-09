FROM couven92/vscode:build-dep-base-armv7l

RUN yarn add npm

RUN yarn run npx gulp vscode-linux-arm-min
RUN yarn run npx gulp vscode-linux-arm-build-deb