---
title: miscellanies-about-react-native
date: 2019-04-01 22:09:33
tags:
    - react native
---

- [If `/android` or `/ios` is missing under project volume](https://stackoverflow.com/questions/42506068/how-can-i-regenerate-ios-folder-in-react-native-project):

    ```bash
    react-native upgrade # optional
    react-native eject
    ```

- `react-native run-ios`: xcrun: error: unable to find utility "instruments", not a developer tool or in PATH
error Command failed: xcrun instruments -s
xcrun: error: unable to find utility "instruments", not a developer tool or in PATH

https://stackoverflow.com/questions/42506068/how-can-i-regenerate-ios-folder-in-react-native-project