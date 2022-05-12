#!/usr/bin/env sh

CONF_DIR=$(dirname `realpath "$0"`)


if [[ -f ~/.emacs || -d ~/.emacs.d ]]; then
    echo ".emacs and/or .emacs.d already exist in home directory."
    echo "please them remove and try again."
else
    echo "Linking .emacs"
    ln -s $CONF_DIR/.emacs ~/.emacs

    echo "Linking .emacs.d"
    ln -s $CONF_DIR/.emacs.d ~/.emacs.d
fi
