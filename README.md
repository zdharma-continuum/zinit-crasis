# Crasis – semigraphical interface to Zplugin

Zsh exposes its parser via `(z)` substitution flag. Parsing `.zshrc` is totally possible.
This way `Crasis` lets you edit your `zplugin` commands located in `.zshrc`. All in pure
Zshell code.

No more commenting-out a line with a text editor to disable plugin, now you can just **press
a button**. `Crasis` is not fully, but nearly complete:

[![asciicast](https://asciinema.org/a/140446.png)](https://asciinema.org/a/140446)

`Crasis` uses [ZUI](http://github.com/zdharma/zui/) library to create `ncurses` interface.
