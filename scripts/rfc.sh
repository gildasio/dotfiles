#!/bin/bash

# Require package 'rfc' from pacman
if [ -e /usr/share/doc/rfc/txt/rfc$1.txt ];
then
    less /usr/share/doc/rfc/txt/rfc$1.txt
else
    less /usr/share/doc/rfc/rfc-index.txt
fi
