# vault-door-3 

## Problem
This vault uses for-loops and byte arrays. The source code for this vault is here: [VaultDoor3.java](https://2019shell1.picoctf.com/static/5836e614d568094316ead6771b3347c0/VaultDoor3.java)

## Solution
Code has this function.
```
    public boolean checkPassword(String password) {
        if (password.length() != 32) {
            return false;
        }
        char[] buffer = new char[32];
        int i;
        for (i=0; i<8; i++) {
            buffer[i] = password.charAt(i);
        }
        for (; i<16; i++) {
            buffer[i] = password.charAt(23-i);
        }
        for (; i<32; i+=2) {
            buffer[i] = password.charAt(46-i);
        }
        for (i=31; i>=17; i-=2) {
            buffer[i] = password.charAt(i);
        }
        String s = new String(buffer);
        return s.equals("jU5t_a_sna_3lpm1dg347_u_4_mfr54b");
    }
```
Manually walking this is not fun.

So just add a print statement to dump out buffer.

Then I fed it a string to make it a simple ceaser substitution.
```
picoCTF{abcdefghijklmnopqrstuvwxyz1234567}

abcdefghponmlkji5r3t1vyxwzu2s4q6
```

Then I just had to use the array in the code to swap things around.
```
jU5t_a_sna_3lpm1dg347_u_4_mfr54b

jU5t_a_s1mpl3_an4gr4m_4_u_7f35db
```

picoCTF{jU5t_a_s1mpl3_an4gr4m_4_u_7f35db}

