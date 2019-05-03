#!/bin/bash

help_menu() {
	HELP="
\nDescription:
\n\tLittle script to take print screen and do little tricks
\n
\nUsage:
\n\t$BASH_SOURCE [options] <destination>
\n
\ndestination\t\t		where to save the image
\n
\nOptions:
\n\t-h\t\t		help menu
\n\t-r\t\t		print root window
\n\t-n\t\t		save negative image
\n\t-b\t\t		save image with borders"

	echo -e $HELP
}

try() {
	echo "Try: $BASH_SOURCE -h"
}

while getopts ":hrnb" o
    do
	case "${o}" in
		h)
			help_menu
			exit 1
			;;
		r)  root=1 ;;
		n)	negative=1 ;;
		b)	border=1 ;;
		\?)
			echo "Invalid option: -$OPTARG" >&2
			try
			exit 1
			;;
	esac
    done

tmp=/tmp/$(date +%F_%H%M%S_%N).png
filename=${@:$OPTIND:1}

if [[ $root ]]
then
	import -window root $tmp
else
	import $tmp
fi

if [[ $negative ]]
then
	convert $tmp -channel RGB -negate $tmp
fi

if [[ $border ]]
then
	convert $tmp -shave 1x1 -bordercolor black -border 1 $tmp
fi

mv $tmp $filename
