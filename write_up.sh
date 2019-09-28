#!/bin/bash
# c - ctf
# f - filename
# t - title
# p - verbose problem
# s - solution

usage() { 
echo "Usage: $0 -c CTF -f file.md -t 'Title' -p 'Problem Desc' -s 'Solution '" 1>&2; exit 1; }

while getopts ":c:f:t:p:s:" o; do
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

		p)
			p=${OPTARG}
                        ;;
		s)
			s=${OPTARG}
                        ;;

		*)
			usage
			;;
	esac
done
shift "$(($OPTIND -1))"

#if [ -z "${c}" ] || [ -z "${f}" ]  ; then
#   usage
#fi
echo "c=$c f=$f t=$t p=$p s=$s"
if [ -z "${c}" ] || [ -z "${f}" ] || [ -z "${t}" ] || [ -z "${p}" ] || [ -z "${s}" ] ; then
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
exit
