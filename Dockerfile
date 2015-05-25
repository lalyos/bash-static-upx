FROM debian:jessie

RUN apt-get update && apt-get install -y upx
ADD https://github.com/robxu9/bash-static/releases/download/4.3.30/bash-linux /data/
ADD https://github.com/robxu9/bash-static/releases/download/4.3.30/bash-osx /data/
RUN chmod +x /data/*

VOLUME /release
WORKDIR /release
CMD upx --ultra-brute --best -o /release/bash-linux /data/bash-linux \
    && upx --ultra-brute --best -o /release/bash-osx  /data/bash-osx \
    && tar czvf bash-linux.tgz bash-linux \
    && tar czvf bash-osx.tgz bash-osx
