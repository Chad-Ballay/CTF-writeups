# Extensions 

## Problem
This is a really weird text file [TXT](https://2019shell1.picoctf.com/static/45886ed4b6d5d1dc74c4944fcf4b4041/flag.txt)? Can you find the flag?

## Solution
chad@brakebills:~/Downloads$ file flag.txt 
flag.txt: PNG image data, 1697 x 608, 8-bit/color RGB, non-interlaced
chad@brakebills:~/Downloads$ mv flag.txt flag.png

Opened the image
picoCTF{now_you_know_about_extensions}

