# Bases 

## Problem
What does this bDNhcm5fdGgzX3IwcDM1 mean? I think it has something to do with bases.

## Solution
Tried a few different conversions until I got to base64.

[https://codebeautify.org/base64-decode](https://codebeautify.org/base64-decode)

picoCTF{l3arn_th3_r0p35}

Next time just use base64
```
echo "bDNhcm5fdGgzX3IwcDM1" | base64 -d
```
