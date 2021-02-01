---
title: macos-disk-cleanup
tags:
  - macOS
abbrlink: 158914ad
date: 2019-11-20 14:59:01
---

## Basics: Purgeable space is not unused space.

Purgeable space is logically unoccupied at the scope of macOS System, but physically not.

Idiot apps like `Xcode` would refuse to install, though the "available" space is fairly enough, given that purgeable space included.

Use `df -h` to query for unused disk space physically.

[Purgeable space can be released manually by making local snapshots thinner.](https://www.reddit.com/r/iOSProgramming/comments/b5uecg/how_much_space_does_xcode_require_to_update/ejgyn0j/?utm_source=share&utm_medium=web2x)

> tmutil thinlocalsnapshots / 10000000000 4

[Shrink TimeMachine backups.](https://dzone.com/articles/shrink-your-time-machine)

## Remove local Photo Library

[Stop icloud photo syncing.](https://www.quora.com/How-can-I-delete-photos-from-my-Mac-but-keep-them-in-iCloud)

## Remove unused Simulators

[They can be downloaded again from Xcode when in need.](https://stackoverflow.com/questions/33419301/macos-xcode-coresimulator-folder-very-big-is-it-ok-to-delete-content)

> xcrun simctl delete unavailable/all

## Remove unused Docker local image