#!/bin/bash

# Configure dotfiles
mkdir -p ~/.gnupg/ ~/.config/i3/ ~/.config/kitty ~/.config/mpd
ln -fs $PWD/files/shell_aliases ~/.shell_aliases
ln -fs $PWD/files/bashrc ~/.bashrc
ln -fs $PWD/files/fish.conf ~/.config/fish/config.fish
ln -fs $PWD/files/fish_variables ~/.config/fish/fish_variables
ln -fs $PWD/files/gpg-agent.conf ~/.gnupg/gpg-agent.conf
ln -fs $PWD/files/i3config ~/.config/i3/config
ln -fs $PWD/files/i3status.conf ~/.i3status.conf
ln -fs $PWD/files/kitty.conf ~/.config/kitty/kitty.conf
ln -fs $PWD/files/mpd.conf ~/.mpdconf
ln -fs $PWD/files/tmux.conf ~/.tmux.conf
ln -fs $PWD/files/vimrc ~/.vimrc
ln -fs $PWD/files/zathurarc ~/.config/zathura/zathurarc
ln -fs $PWD/files/shell_variables ~/.shell_variables
ln -fs $PWD/files/gdbinit ~/.gdbinit
ln -fs $PWD/files/newsboat ~/.newsboat/config

# Install little usefull scripts
sudo ln -fs $PWD/scripts/blogup.sh /usr/local/bin/blogup
sudo ln -fs $PWD/scripts/brightness.sh /usr/local/bin/brightness
sudo ln -fs $PWD/scripts/clean.sh /usr/local/bin/clean_cache
sudo ln -fs $PWD/scripts/decktape.sh /usr/local/bin/decktape
sudo ln -fs $PWD/scripts/i3-get-window-criteria.sh /usr/local/bin/i3-get-window-criteria
sudo ln -fs $PWD/scripts/rfc.sh /usr/local/bin/rfc
sudo ln -fs $PWD/scripts/shot.sh /usr/local/bin/shot
sudo ln -fs $PWD/scripts/invert.sh /usr/local/bin/invert
sudo ln -fs $PWD/scripts/surf-tor.sh /usr/local/bin/surf-tor
sudo ln -fs $PWD/scripts/surf-zap.sh /usr/local/bin/surf-zap
sudo ln -fs $PWD/scripts/surf-burp.sh /usr/local/bin/surf-burp
