[![Build Status](https://travis-ci.org/zdharma/zplugin.svg?branch=master)](https://travis-ci.org/zdharma/zplugin)
[![License (GPL version 3)](https://img.shields.io/badge/license-GNU%20GPL%20version%203-blue.svg?style=flat-square)](./LICENSE)
[![MIT License](https://img.shields.io/badge/license-MIT-blue.svg?style=flat-square)](./LICENSE)
![ZSH 5.0.0](https://img.shields.io/badge/zsh-v5.0.0-orange.svg?style=flat-square)

# Crasis – semigraphical interface to Zplugin

Zsh exposes its parser via `(z)` substitution flag. Parsing `.zshrc` is totally possible.
This way `Crasis` lets you edit your `Zplugin` commands located in `.zshrc`. All in pure
`Zshell` code.

No more commenting-out a line with a text editor to disable plugin, cluttering `.zshrc`,
now you can just **press a button**. `Crasis` is not fully, but nearly complete:

[![asciicast](https://asciinema.org/a/140446.png)](https://asciinema.org/a/140446)

`Crasis` uses [ZUI](http://github.com/zdharma/zui/) library to create `ncurses` interface.

# Installation

Install [Zplugin](https://github.com/zdharma/zplugin) and add following commands to `.zshrc`:

```
zplugin light zdharma/zui
zplugin light zdharma/zplugin-crasis
```

# Code documentation

`Crasis` is a [ZUI](http://github.com/zdharma/zui/) application. `ZUI` is a pure-Zshell library
where user generates simple text with hyperlinks, which is then turned into active document with
buttons. Check out code documentation:
[asciidoc](https://github.com/zdharma/zplugin-crasis/blob/master/zsdoc/crasis.adoc),
[PDF](http://zdharma.org/zplugin-crasis/crasis.pdf).
