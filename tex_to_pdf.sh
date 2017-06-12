#!/usr/bin/env bash

document=$1

if [ ! -f "${document}" ]; then
	echo "No such file"
	exit 1
fi

sudo lualatex -output-format=pdf -output-directory=dist "${document}"
echo "Done!"