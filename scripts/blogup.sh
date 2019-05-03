#!/bin/bash

docker run -it --name blog -v $PWD:/srv/jekyll jekyll/jekyll jekyll serve
