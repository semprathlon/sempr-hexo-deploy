---
title: Miscellanies about initializing an Ubuntu Server
author: Semprathlon / Simfae Dean
tags: []
categories: []
abbrlink: 4fa68e28
date: 2018-07-08 06:38:00
---
#### [Having trouble with Windows SSH: Unprotected private key file]()
```
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@         WARNING: UNPROTECTED PRIVATE KEY FILE!          @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Permissions for 'private' are too open.
It is required that your private key files are NOT accessible by others.
This private key will be ignored.
Load key "private": bad permissions
```
You can use icacls in windows instead of chmod to adjust file permission. 
```
icacls .\private.key /inheritance:r
icacls .\private.key /grant:r "%username%":"(R)"
```

#### [Having trouble with SSH login: connection reset after idle for some time](https://unix.stackexchange.com/questions/334437/ssh-connection-reset-after-idle-for-some-time)

[Ineffective]
```
ssh -o TCPKeepAlive=true root@host.com
```

For long term use you should modify `/etc/ssh/sshd_config` as follows:
```
ClientAliveInterval 30
ClientAliveCountMax 60
```

#### [Error: Got permission denied while trying to connect to the Docker daemon socket](https://www.jianshu.com/p/95e397570896)

Follow the just a few steps and you do not have to access docker images with superuser privileges.
```
sudo groupadd docker
sudo gpasswd -a ${USER} docker
sudo service docker restart
```

#### [Add a new sudoer](https://askubuntu.com/questions/2214/how-do-i-add-a-user-to-the-sudo-group)
```
sudo usermod -aG sudo <username>
```