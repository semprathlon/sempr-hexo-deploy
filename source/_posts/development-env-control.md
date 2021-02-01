---
title: Development Environment Management
tags:
  - node
  - java
  - python
abbrlink: 85d30cd2
date: 2020-08-04 20:13:05
---

Building environment setup can be very subtle and in-depth.  Even the same `python 3.6` has a different dependent static library on Linux than on Mac.

### Node

> brew install nvm  
> nvm ls  
> nvm install 11  
> nvm use 11  

### Java

> /usr/libexec/java_home [-V] [-v 1.8]

### Python

Mac built-in python wasn't fully workable.

> brew install pyenv  
> pyenv versions  
> pyenv install 3.6.10  
> pyenv local/global 3.6.10  