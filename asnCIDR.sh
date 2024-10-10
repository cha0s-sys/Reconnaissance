#!/bin/bash

for asn in $(cat AmazonASN.txt);do

bgpq4 -4 -A -l prefix_list $asn | grep -oE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+/[0-9]+' | sed '/0\.0\.0\.0\/0/d'

done
