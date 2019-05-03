#!/bin/bash

# Configure dotfiles
ln -fs $PWD/files/bash_aliases ~/.bash_aliases
ln -fs $PWD/files/bashrc ~/.bashrc
ln -fs $PWD/files/i3config ~/.config/i3/config
ln -fs $PWD/files/i3status.conf ~/.i3status.conf
ln -fs $PWD/files/gpg-agent.conf ~/.gnupg/gpg-agent.conf
ln -fs $PWD/files/vimrc ~/.vimrc
ln -fs $PWD/files/tmux.conf ~/.tmux.conf

# Install little usefull scripts
ln -fs $PWD/scripts/blogup.sh /usr/local/bin/blogup
ln -fs $PWD/scripts/brightness.sh /usr/local/bin/brightness
ln -fs $PWD/scripts/decktape.sh /usr/local/bin/decktape
ln -fs $PWD/scripts/i3-get-window-criteria.sh /usr/local/bin/i3-get-window-criteria
ln -fs $PWD/scripts/rfc.sh /usr/local/bin/rfc
ln -fs $PWD/scripts/shot.sh /usr/local/bin/shot
