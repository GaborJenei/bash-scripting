#! /bin/bash

# Ask for starting IP
echo "Please provide the start IP: "
read FirstIP

echo "last IP last octet: "
read LastOctet

echo "Port to search for: "
read portno

nmap -sT $FirstIP-$LastOctet -p $portno > /dev/null -oG MSSQLScan
cat MSSQLScan | grep open > MSSQLScan2
cat MSSQLScan2
