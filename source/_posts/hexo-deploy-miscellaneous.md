---
title: Miscellanies about Hexo deployment with purification
date: 2019-03-04 21:45:59
tags: 
    - hexo
    - git
    - npm
---

- [Git switch remote origin](https://www.ethode.com/blog/git-change-remote-origin)
    ``` bash
    $ git remote rm origin
    $ git remote add origin <repository>
    $ git config master.remote origin
    $ git config master.merge refs/heads/master
    ```

- [Git change the commit author](https://stackoverflow.com/questions/3042437/how-to-change-the-commit-author-for-one-specific-commit/28845565)

    But the SHA1 code changes after revision.

- Git add submodule reference
    ``` bash
    git submodule add <repository<path>
    ```
    check `.gitmodules` for details.

- [Git clone submodule references](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

- [Git remove submodule reference](https://gist.github.com/myusuf3/7f645819ded92bda6677)
    ``` bash
    git submodule deinit <path_to_submodule>
    git rm <path_to_submodule>
    git commit -m "Removed submodule"
    ```
    rm -rf .git/modules/<path_to_submodule>

- [Git submodule HEAD detached](https://stackoverflow.com/questions/18770545/why-is-my-git-submodule-head-detached-from-master)

    Update `.gitmodule` and specify the branch of submodule to track.  Then reload:
    ``` bash
    git submodule sync
    git submodule update --init --recursive --remote
    ```
    Or re-add the submodule:
    ``` bash
    git submodule add -b <branch<repository[<submodule-path>]
    git submodule update --remote
    ```

- [Hexo theme `spectre` theme `unexpected token` error](https://github.com/neoFelhz/hexo-theme-spectre/issues/3)

- Hexo math not working

- [Git – Resolve Merge Conflicts](https://easyengine.io/tutorials/git/git-resolve-merge-conflicts)
    ``` bash
    git checkout --ours PATH/FILE # accepting base version only
    git checkout --theirs PATH/FILE # accepting incoming version only
    ```

- [How to use GitHub badges to stop feeling like a noob](https://medium.freecodecamp.org/how-to-use-badges-to-stop-feeling-like-a-noob-d4e6600d37d2)

- [`Katex` can work more efficiently than `Mathjax`](https://katex.org/#demo)