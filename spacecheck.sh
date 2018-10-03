#!/bin/bash

to="mail@example.com"
servername="NAME or IP"
dir="/var/log"
space=$(du -sh $dir)
echo "Monatsbericht zu $dir"
echo "$space"
echo "Mail will be send now ..."
mail -s "Monatsbericht $dir" -t $to <<< "Der Ordner $dir hat aktuell folgende Groesse auf dem Server ($servername): $space"