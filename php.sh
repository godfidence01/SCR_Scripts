echo "simple checklist to find potential vulnerabilities in php code"
!/bin/bash
​echo "Starting the GREP Processs"
​grep -ir "$\_server" * > Server.txt; #server IP details
grep -ir "$\_Cookie" * > cookie.txt; 
grep -ir "$\_session*" * > session.txt; 
grep -ir "$\HTTP_SESSION*" * > http_session.txt; #session 
grep -ir "$\_ENV*" * > envs.txt; # environment var 
grep -ir "$\_File" * > file.txt; #environment var 
grep -ir "$\_get" * > get.txt; # sensitive data in get 
grep -ir "$\_Request" * > request.txt; # Method not enforced 
grep -ir "$\_global" * > global.txt; #global variables 
grep -ir "pass" * && grep -ir "password" * > password.txt; # hardcoded 
grep -ir "user" * && grep -ir "username" * > username.txt; #hardcoded 
grep -ir "Access-Control-Allow-Origin:" * >cors.txt; #cors 
grep -ir "//" * > comments.txt; #sensitive information 
grep -ir "key*" * > keyss.txt; #sensitive information 
grep -ir "token" * > tokenss.txt; #sensitive information​
grep -ir "mt_rand" * > random.txt; #Weak Crypto