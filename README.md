all you need is love ... and static bash.

## Usage

You can get the binaries from the [releases](https://github.com/lalyos/bash-static-upx/releases) page.


## Build

If you don’t trust the released binaries, or want to build it yourself:
```
make build
```

## Licensing

GPLv3

> Bash is free software; you can redistribute it and/or modify it under the terms
> of the GNU General Public License as published by the Free Software Foundation;
> either version 3 of the License, or (at your option) any later version.

## tl;dr

A lot of times we develop bash scripts. But how can we make sure, that the
user/customer has bash, or the right version. Let’s make bash easy to ship.

To install bash should be just a download/unzip, instead of apt-get/yum/brew.
There is already a [bash-static](https://github.com/robxu9/bash-static),
but i wanted to reduce the download size.

[Ultimate Packer for eXecutables](http://upx.sourceforge.net) is used to reduce 
the size of the binaries.

