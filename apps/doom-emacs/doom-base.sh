#!/bin/sh

git clone --depth 1 https://github.com/hlissner/doom-emacs ~/.emacs.d

~/.emacs.d/bin/doom install

export PATH="$HOME/.emacs.d/bin:$PATH"
