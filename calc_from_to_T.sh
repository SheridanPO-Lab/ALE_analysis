#!/bin/bash

#concat all uTs file
cat *.uTs > Transfers_file

#Calculated "Transfer from" for each branch
awk '{a[$1] += $3} END{for (i in a) print i, a[i]}' Transfers_file|sort|grep -v "#" > Transfer_from
 
#Calculated "Transfer to" for each branch
awk '{a[$2] += $3} END{for (i in a) print i, a[i]}' Transfers_file|sort|grep -v "#" > Transfer_to

#join 
join Transfer_from Transfer_to > From_to_T.txt
sed -i 's/ /\t/g' From_to_T.txt
sed -i '1s/^/Branch	From	To\n/' From_to_T.txt
