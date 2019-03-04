title: A scheme for running single docker-hexo server
author: Semprathlon / Simfae Dean
tags: []
categories: []
date: 2018-08-12 06:31:00
---
Start PHP service:
```
docker run --name phpfpm -d -v ~/www:/app php:5.6-fpm
```
Use a pre-built hexo image:
```
docker run --name myhexo -v ~/blog:/root/blog -d sempr/hexo-al
```
Don't forget to make links between containers:
```
docker run -d --name mynginx -p 80:80 -p 443:443 --link phpfpm:phpfpm --link myhexo:myhexo -v ~/https.conf:/etc/nginx/conf.d/default.conf -v ~/1_im.semprathlon.net_bundle.crt:/etc/nginx/ssl/nginx.crt -v ~/2_im.semprathlon.net.key:/etc/nginx/ssl/nginx.key --volumes-from phpfpm nginx
    ```