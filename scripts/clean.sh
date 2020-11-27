#!/bin/bash

echo -n 'Removing ~/.cache/pikaur/pkg/* ...'
sudo rm -rf ~/.cache/pikaur/pkg/*
echo -e ' done\n'

echo -n 'Removing ~/.cache/pikaur/build/* ...'
sudo rm -rf ~/.cache/pikaur/build/*
echo -e ' done\n'

echo 'journal vacuum ...'
sudo journalctl --vacuum-time=3d
echo -e ' done\n'

echo -n 'Removing pacman cache ...'
sudo rm -rf /var/cache/pacman/pkg/*
echo -e ' done\n'

echo -n 'Removing uneeded packages ...'
if [[ $(pacman -Qdtq) ]]; then
    sudo pacman -R $(pacman -Qdtq)
    echo -e ' done\n'
else
    echo -e ' not necessary\n'
fi
