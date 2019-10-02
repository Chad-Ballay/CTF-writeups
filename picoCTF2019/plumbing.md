# Plumbing 

## Problem
Sometimes you need to handle process data outside of a file. Can you find a way to keep the output from this program and search for the flag? Connect to 2019shell1.picoctf.com 63345.

## Solution
```
chad@brakebills:~/Downloads$ nc 2019shell1.picoctf.com 63345 | grep pico
picoCTF{digital_plumb3r_4e7a5813}
```
