#!/bin/bash
#method 1
#echo $PATH > a.log
#sed 's/:/\n/g' a.log 
#sed 's/:/\n/g'  < $PATH
#rm a.log


#method 2
#sed 's/:/\n/g'  <<< "$PATH"
#or
#echo $PATH | sed 's/:/\n/g'  


#method 3
#tr ':'  '\n' <<<"$PATH"
#or
#echo $PATH | tr ':'  '\n'




#method 4
#Use bash's Parameter Expansion:
#echo "${PATH//:/$'\n'}"

#This replaces all : in $PATH by a newline (\n) and prints the result. The content of $PATH remains unchanged.
#If you only want to replace the first :, remove second slash: echo -e "${PATH/:/\n}"
#echo -e "${PATH/:/\n}"



#method 5
echo $PATH | awk -F: '{for(i=1;i<=NF;i++)print $i}'

