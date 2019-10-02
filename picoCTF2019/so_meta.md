# So meta 

## Problem
Find the flag in this [picture](https://2019shell1.picoctf.com/static/6244be6c6263db822861cdd1018f4126/pico_img.png). You can also find the file in /problems/so-meta_1_ab9d99603935344b81d7f07973e70155.

## Solution
Strings yet again for the win.
```
chad@brakebills:~/Downloads$ strings pico_img.png | grep pico
picoCTF{s0_m3ta_368a0341}
chad@brakebills:~/Downloads$ 
```


