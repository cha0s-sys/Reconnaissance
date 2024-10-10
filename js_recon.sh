#!/bin/bash

file=$1
output=/$(echo "$file" | cut -d "/" -f1,2,3,4,5)
cd $output
jstee -f $1
#gau -subs target.com |grep -iE '\.js'|grep -iEv '(\.jsp|\.json)' >> js.txt
cat $output/js.txt | jsluice secrets -i -S --unique
