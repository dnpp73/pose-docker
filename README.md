# Palm OS Emulator in Docker on macOS


Original: [https://palm2000.com/projects/HowToRunPOSEinADockerContainerOnMacOSX.php](https://palm2000.com/projects/HowToRunPOSEinADockerContainerOnMacOSX.php)


## Installation

Install [XQuartz](https://www.xquartz.org)


## Configuration

Allow network client connection in X11.app preference.


## Build

```
$ ./build.sh
```


## Running

```
$ ./run.sh
```

and

```
$ ./down.sh
```


## Connecting

```
$ docker container exec -it pose /bin/bash
```
