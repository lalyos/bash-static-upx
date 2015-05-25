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

UPX was able to reduce the size to with 60%:

```
                       Ultimate Packer for eXecutables
                          Copyright (C) 1996 - 2013
UPX 3.91        Markus Oberhumer, Laszlo Molnar & John Reiser   Sep 30th 2013

        File size         Ratio      Format      Name
   --------------------   ------   -----------   -----------
   1122099 ->    484068   43.14%  linux/ElfAMD   bash-linux

Packed 1 file.
                       Ultimate Packer for eXecutables
                          Copyright (C) 1996 - 2013
UPX 3.91        Markus Oberhumer, Laszlo Molnar & John Reiser   Sep 30th 2013

        File size         Ratio      Format      Name
   --------------------   ------   -----------   -----------
    929592 ->    364544   39.22%   Mach/AMD64    bash-osx

```

