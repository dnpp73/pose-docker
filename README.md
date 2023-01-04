# Palm OS Emulator on Docker


Original: [https://palm2000.com/projects/HowToRunPOSEinADockerContainerOnMacOSX.php](https://palm2000.com/projects/HowToRunPOSEinADockerContainerOnMacOSX.php)


## Installation

Install [XQuartz](https://www.xquartz.org)


## Configuration

```
$ xhost +
```


## Build

```
$ docker image build -t pose:latest .
```


## Running

```
$ docker container run --rm --platform='linux/i386' -e 'DISPLAY=host.docker.internal:0' -v "$(pwd)/_rom:/_rom" --name pose pose:latest
```


## Connecting

```
$ docker container exec -it pose /bin/bash
```
