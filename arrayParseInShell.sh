#!/bin/bash

# Example 1
while [ -n "${pear_list[$i]}" ]
do
    	if [ "${pear_list[$i]}" == "DB" ] && [ "$install_DB" != "find_db" ]
    	then
            	# echo "<${pear_list[$i]}>"
            	install_DB="find_db"
    	# else [ "${pear_list[$i]}" == "DB" ]
            	# install_DB=""
    	fi
    	# echo -e "==>${install_DB}\n"
    	i=$(($i+1))
done

# Example 2
for (( i = 0 ; i < ${#names[@]} ; i++ ))
do
	echo ${names[$i]}
done

# Example 3
for item in ${array[*]}
do
	echo $item
done
