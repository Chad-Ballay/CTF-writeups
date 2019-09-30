# vault-door-4 

## Problem
This vault uses ASCII encoding for the password. The source code for this vault is here: [VaultDoor4.java](https://2019shell1.picoctf.com/static/970f9e687ee89053e5d5ce24a925448c/VaultDoor4.java)

## Solution
Downloaded the code and saw that it was just doing a comparison on an array of bytes with various encodings.  (binary, hex, ascii, etc...)

Decided to just spit out the array it was comparing against after converting it to a string.
```
    public boolean checkPassword(String password) {
        byte[] passBytes = password.getBytes();
        byte[] myBytes = {
            106 , 85  , 53  , 116 , 95  , 52  , 95  , 98  ,
            0x55, 0x6e, 0x43, 0x68, 0x5f, 0x30, 0x66, 0x5f,
            0142, 0131, 0164, 063 , 0163, 0137, 062 , 066 ,
            '7' , 'e' , '0' , '3' , 'd' , '1' , '1' , '6' ,
        };
        String string = new String(myBytes);  <===========
        System.out.println(string);           <===========
        for (int i=0; i<32; i++) {
            if (passBytes[i] != myBytes[i]) {
                return false;
            }
        }
        return true;
    }
}

```

```
chad@brakebills:~/Downloads$ javac VaultDoor4.java ; java VaultDoor4 
Enter vault password: picoCTF{abcdefghijklmnopqrstuvwxyz1234567}
jU5t_4_bUnCh_0f_bYt3s_267e03d116
Access denied!
```

picoCTF{jU5t_4_bUnCh_0f_bYt3s_267e03d116}

