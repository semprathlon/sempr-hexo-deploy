---
title: Miscellanies about initializing an Ubuntu Server (II)
date: 2020-09-13 19:45:47
tags:
    - Ubuntu
    - Docker
---

### Error: Permission denied ... when running Docker (repetitive)

Better solution than before:
```
sudo groupadd docker
sudo usermod -aG docker $USER
sudo service docker restart
```

### Local Build Preparation
This is likely to be a cure-all:
```
sudo apt install -y build-essential
```