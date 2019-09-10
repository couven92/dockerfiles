FROM couven92/vscode:build-dep-base-x86_64

RUN yarn run npx gulp vscode-linux-amd64-min
RUN yarn run npx gulp vscode-linux-amd64-build-deb
