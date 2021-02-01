---
title: Insights into DNS
tags:
  - network
  - DNS
abbrlink: 81193b39
date: 2019-04-06 14:44:57
---

* [DNS cannot mapping to subfolders](https://stackoverflow.com/questions/10927658/dns-mapping-to-subfolders)

    DNS can only map to an host/IP address, but not path / port.

    What you ask for requires URL forwarding/redirecting, and is not about DNS records.

    You will need a web server to redirect by HTTP 301.