#! /bin/bash

nmap -sT 86.134.151.119/24 -p 1433 > /dev/null -oG MSSQLscan

cat MSSQLscan | grep open > MSSQLscan2
cat MSSQLscan2
