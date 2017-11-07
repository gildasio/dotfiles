#!/bin/bash

# set up i3config and i3status bar config
ln -i -s $(pwd)/i3wm/i3status.conf ~/.i3status.conf
ln -i -s $(pwd)/i3wm/config ~/.config/i3/config

# set up tmux config
ln -i -s $(pwd)/tmux.conf ~/.tmux.conf
