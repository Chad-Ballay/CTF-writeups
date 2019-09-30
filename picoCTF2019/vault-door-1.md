# vault-door-1 

## Problem
This vault uses some complicated arrays! I hope you can make sense of it, special agent. The source code for this vault is here: [VaultDoor1.java](https://2019shell1.picoctf.com/static/2e4a9c36c1d51d5de4c82f7507c69bf7/VaultDoor1.java)

## Solution
Source code with a bunch of array slicing and dicing.  
```
chad@brakebills:~/Downloads$ grep password.charAt VaultDoor1.java | cut -f2- -d"("| sort -n | cut -f2 -d\'| paste -s -d ""
d35cr4mbl3_tH3_cH4r4cT3r5_2487f0
```
picoCTF{d35cr4mbl3_tH3_cH4r4cT3r5_2487f0}
