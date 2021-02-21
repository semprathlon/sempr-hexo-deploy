---
title: Miscellanies about initializing an Ubuntu Server (II)
tags:
  - Ubuntu
  - Docker
abbrlink: '28045272'
date: 2020-09-13 19:45:47
---

### Error: Permission denied ... when running Docker (perviously seen)

Better solution than before:
```
sudo groupadd docker
sudo usermod -aG docker $USER
sudo service docker restart
```

\[UPDATE\]
Looks like it is also required to logging out and back so that the group membership change takes effect ([how?](https://www.digitalocean.com/community/questions/how-to-fix-docker-got-permission-denied-while-trying-to-connect-to-the-docker-daemon-socket)):

```
su -s ${USER}
```

And this is to [check for group membership](https://askubuntu.com/questions/136788/how-do-i-list-the-members-of-a-group):
```
getent group groupname | awk -F: '{print $4}'
```

### Potential issue when Docker for Ubuntu is installed and managed by Snap

Either `systemd` or `systemctl` won't be able to locate or control `Docker`, which would occur when Docker is pre-installed with Ubuntu Server. Use [snap commands](https://codeburst.io/how-to-install-and-use-snap-on-ubuntu-18-04-9fcb6e3b34f9) instead:
```
sudo snap services docker
sudo snap restart docker
```

### Local Build Preparation
This is likely to be a cure-all:
```
sudo apt install -y build-essential
```