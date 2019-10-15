# Vault-door-5 

## Problem
In the last challenge, you mastered octal (base 8), decimal (base 10), and hexadecimal (base 16) numbers, but this vault door uses a different change of base as well as URL encoding! The source code for this vault is here: [VaultDoor5.java](https://2019shell1.picoctf.com/static/5d1069b6db73b5145e149575549ea2b5/VaultDoor5.java)

## Solution
Viewed the source code and saw that they check your input after URL encoding it, and then base64 encoding it.   The comparison is to this output.
```
    public boolean checkPassword(String password) {
        String urlEncoded = urlEncode(password.getBytes());
        String base64Encoded = base64Encode(urlEncoded.getBytes());
        String expected = "JTYzJTMwJTZlJTc2JTMzJTcyJTc0JTMxJTZlJTY3JTVm"
                        + "JTY2JTcyJTMwJTZkJTVmJTYyJTYxJTM1JTY1JTVmJTM2"
                        + "JTM0JTVmJTM1JTYyJTMxJTYxJTMwJTM5JTY0JTMy";
        return base64Encoded.equals(expected);
    }
```

So I just used these two sites to walk that backwards.
https://www.base64decode.org/
https://www.urldecoder.org/

Yielded this
c0nv3rt1ng_fr0m_ba5e_64_5b1a09d2
picoCTF{c0nv3rt1ng_fr0m_ba5e_64_5b1a09d2}

Decided to figure out the commandline version
```
j3balla:/Users/j3balla $ TEMP=`echo "JTYzJTMwJTZlJTc2JTMzJTcyJTc0JTMxJTZlJTY3JTVmJTY2JTcyJTMwJTZkJTVmJTYyJTYxJTM1JTY1JTVmJTM2JTM0JTVmJTM1JTYyJTMxJTYxJTMwJTM5JTY0JTMy" | base64 --decode`
j3balla:/Users/j3balla $ printf -v TEMP "%b" "${TEMP//\%/\x}"
j3balla:/Users/j3balla $ echo $TEMP
c0nv3rt1ng_fr0m_ba5e_64_5b1a09d2
j3balla:/Users/j3balla $
```
