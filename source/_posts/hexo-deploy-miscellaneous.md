---
title: Miscellanies about Hexo deployment with purification
date: 2019-03-04 21:45:59
tags: hexo, git, npm
---

- Git add submodule reference
    > git submodule add \<repository\> \<path\>

    check `.gitmodules` for details.

- [Git clone submodule references](https://git-scm.com/book/en/v2/Git-Tools-Submodules)

- [Git remove submodule reference](https://gist.github.com/myusuf3/7f645819ded92bda6677)
    > git submodule deinit <path_to_submodule>
    > 
    > git rm <path_to_submodule>
    > 
    > git commit -m "Removed submodule"
    > 
    > rm -rf .git/modules/<path_to_submodule>

- [Hexo theme `spectre` theme `unexpected token` error](https://github.com/neoFelhz/hexo-theme-spectre/issues/3)

- Hexo math not working

- [Git – Resolve Merge Conflicts](https://easyengine.io/tutorials/git/git-resolve-merge-conflicts)

    > git checkout --ours PATH/FILE # accepting base version only

    > git checkout --theirs PATH/FILE # accepting incoming version only

- [How to use GitHub badges to stop feeling like a noob](https://medium.freecodecamp.org/how-to-use-badges-to-stop-feeling-like-a-noob-d4e6600d37d2)

- [`Katex` can work more efficiently than `Mathjax`](https://katex.org/#demo)