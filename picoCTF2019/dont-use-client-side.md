# dont-use-client-side 

## Problem
Can you break into this super secure portal? https://2019shell1.picoctf.com/problem/47289/ [link](http://2019shell1.picoctf.com:47289) or http://2019shell1.picoctf.com:47289

## Solution
Loading source of the page yielded this headache.         
```
<script type="text/javascript">
  function verify() {
    checkpass = document.getElementById("pass").value;
    split = 4;
    if (checkpass.substring(0, split) == 'pico') {
      if (checkpass.substring(split*6, split*7) == 'e22d') {
        if (checkpass.substring(split, split*2) == 'CTF{') {
         if (checkpass.substring(split*4, split*5) == 'ts_p') {
          if (checkpass.substring(split*3, split*4) == 'lien') {
            if (checkpass.substring(split*5, split*6) == 'lz_c') {
              if (checkpass.substring(split*2, split*3) == 'no_c') {
                if (checkpass.substring(split*7, split*8) == 'c}') {
                  alert("Password Verified")
                  }
                }
              }
      
            }
          }
        }
      }
    }
    else {
      alert("Incorrect password");
    }
    
  }
</script>
```
Parsing that quickly, yields this.
picoCTF{no_clients_plz_ce22dc}
