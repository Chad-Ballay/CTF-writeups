# Handy-shellcode 

## Problem
This [program](https://2019shell1.picoctf.com/static/9e6254fb3c561cef02f30e7e90ef2ea7/vuln) executes any shellcode that you give it. Can you spawn a shell and use that to read the flag.txt? You can find the program in /problems/handy-shellcode_4_037bd47611d842b565cfa1f378bfd8d9 on the shell server. [Source](https://2019shell1.picoctf.com/static/9e6254fb3c561cef02f30e7e90ef2ea7/vuln.c).


## Solution
I ain't gonna lie.  This one reminded me of a problem last year so I referenced how to solved that one.  It involves exploiting the BUFSIZE array overrun.  Here is a bit of code.  https://raw.githubusercontent.com/ishara1995/picoCTF2019/master/handy-shellcode/exploit.py

picoCTF{h4ndY_d4ndY_sh311c0d3_55c521fe}

