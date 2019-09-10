# Visual Studio Code

https://code.visualstudio.com

## Build base image

The VS Code build dependencies base image contains the base image with only the 
build dependencies installed.

Although the build instructions in the dockerfile are architecture agnostic,
the resulting image will be based on the architecture on which the docker client
is actually running.

On Linux we can use `uname -m` to get the base image architecture. On Windows,
you can lowercase the value returned by `SET PROCESSOR_ARCHITECTURE`.

```bash
docker build -t couven92/vscode:build-dep-base -t couven92/vscode:build-dep-base-$(uname -m) -f vscode/debian-stretch.base.dockerfile .
```
```cmd
docker build -t couven92/vscode:build-dep-base -t couven92/vscode:build-dep-base-%PROCESSOR_ARCHITECTURE% -f vscode/debian-stretch.base.dockerfile .
```