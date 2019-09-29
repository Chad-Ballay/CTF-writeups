#!/bin/bash
# c - ctf
# f - filename
# t - title

usage() { 
echo "Usage: $0 -c CTF -f file.md -t 'Title' " 1>&2; exit 1; }

while getopts ":c:f:t:" o; do
	case "${o}" in
		c)
			c=${OPTARG}
			;;
		f)
			f=${OPTARG}
                        ;;
		t)
			t=${OPTARG}
                        ;;

		*)
			usage
			;;
	esac
done
shift "$(($OPTIND -1))"

echo "c=$c f=$f t=$t "
if [ -z "${c}" ] || [ -z "${f}" ] || [ -z "${t}" ] ; then
    usage
fi

if [ ! -d $c ]; then
	echo "Can't find ctf dir $c so exiting"
	exit 1
fi

if [ -f ./$c/$f ]; then
	echo "File $f already exists so exiting"
	exit 1
fi

echo "1. [$t]($f)" >> ./$c/README.md
echo "# $t " > ./$c/$f
echo "" >> ./$c/$f
echo "## Problem" >> ./$c/$f
echo "" >> ./$c/$f
echo "" >> ./$c/$f
echo "## Solution" >> ./$c/$f
echo "" >> ./$c/$f
echo "" >> ./$c/$f
vi ./$c/$f

exit
