title: How to build a minimized docker image for Hexo
tags: docker
date: 2018-04-20 10:07:43
---
To start with, it is not easy for greenhands to write out an appropriate buildfile for `hexo` in `docker`.  
As is suggested, `Alpine` is a minimized Linux environment designated for docker images, which appears to be tiny in size.
Yet it is tough to upgrade `node` and `npm` if the pulled version of `alpine` is outmoded, so take a look when choosing the right origin of the mirror.
``` dockerfile
FROM daocloud.io/library/alpine:3.6

MAINTAINER Semprathlon, silveritdean@gmail.com

RUN \
    # In China, switch to USTC mirror sources for better efficiancy
    sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories && \
    apk update && apk upgrade && apk add --update wget curl bash nodejs-npm && \
    # Resolve error: could not get uid/gid 'nobody'
    npm config set unsafe-perm true && \
    # In China, use cnpm for better efficiancy
    npm install -g cnpm --registry=https://registry.npm.taobao.org

WORKDIR /root

RUN \
    cnpm install hexo-cli -g && \
    mkdir blog && cd blog && \
    # install hexo
    cnpm install hexo-cli -g && \
    hexo init && cnpm install 

WORKDIR /root/blog/

EXPOSE 4000

CMD ["/usr/bin/hexo", "s"]
```

``` bash
docker build -t sempr/alpine-hexo -f hexo-in-docker-alpine .
```

Run after build:
``` bash
docker run --name myhexo -p 4000:4000 -v ~/blog:/root/blog -d sempr/alpine-hexo:release
```

Debug:
``` bash
docker run --rm --name myhexo -p 4000:4000 -v ~/blog:/root/blog -it sempr/alpine-hexo:debug /bin/bash
```