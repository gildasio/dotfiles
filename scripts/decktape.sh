#!/bin/bash

if [[ -z $1 ]]; then
	echo -e 'Faltou argumento. Utilize assim:\n'
	echo -e "\t$ $0 http://localhost:4000\n"
	exit 1
fi

docker run astefanutti/decktape $1 slides.pdf
docker cp `docker ps -lq`:slides/slides.pdf .
docker rm `docker ps -lq`
