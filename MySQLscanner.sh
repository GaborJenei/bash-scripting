#! /bin/bash

# This script is aimed to find hosts with MySQL installed

nmap -sT 86.134.151.119/24 -p 3306 > /dev/null -oG MySQLscan

cat MySQLscan | grep open > MySQLscan2
cat MySQLscan2
