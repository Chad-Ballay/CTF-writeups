# Hideme 

## Problem
Every file gets a flag.
The SOC analyst saw one image been sent back and forth between two people. They decided to investigate and found out that there was more than what meets the eye [here](https://artifacts.picoctf.net/c/257/flag.png).

## Solution
You are given a file titled flag.png that when you load it, it does render an image correctly.  When I ran strings on the file there were some ASCII strings found that had the word secret in it.  Looked at the metadata in the EXIF viewer and didn't see anything informative.  Next up, I googled some stegnography tools and writeups to try and get a better idea of what to do next.   
[https://infosecwriteups.com/beginners-ctf-guide-finding-hidden-data-in-images-e3be9e34ae0d](https://infosecwriteups.com/beginners-ctf-guide-finding-hidden-data-in-images-e3be9e34ae0d)  

Working through the example tools, we came across binwalk.  This tool will scan the file and try to identify embedded files within the main file.  
```
wiglaf1979@wiglaf1979-ThinkPad-T480:~/Downloads$ binwalk -e flag.png 

DECIMAL       HEXADECIMAL     DESCRIPTION
--------------------------------------------------------------------------------
0             0x0             PNG image, 512 x 504, 8-bit/color RGBA, non-interlaced
41            0x29            Zlib compressed data, compressed
39739         0x9B3B          Zip archive data, at least v1.0 to extract, name: secret/
39804         0x9B7C          Zip archive data, at least v2.0 to extract, compressed size: 2959, uncompressed size: 3108, name: secret/flag.png
42998         0xA7F6          End of Zip archive, footer length: 22
```

Once we loaded the secret/flag.png file we were able to see the flag in the image.  
picoCTF{Hiddinng_An_imag3_within_@n_ima9e_dc2ab58f}
