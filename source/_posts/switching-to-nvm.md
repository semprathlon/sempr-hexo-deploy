---
title: Replacing system-wide `nodejs` by another version managed by `nvm`
date: 2019-09-28 15:33:32
tags:
    - nodejs
---

Some legacy codes are not compatible with latest nodejs.  `nvm` helps with this situation to provide older stable version.

Uninstall system-wide `nodejs` and install `nvm` via package management.

Config `fish-shell`:

```
function nvm
   bass source (brew --prefix nvm)/nvm.sh --no-use ';' nvm $argv
end

set -x NVM_DIR ~/.nvm
nvm use default --silent
```

Take effect immediately: 
> source ~/.config/fish/config.fish

An extension to `fish-shell` is `bass`.
> Bass makes it easy to use utilities written for Bash in fish shell.

An extension to `homebrew` is `cask`.