#!/bin/bash
# Example 1
for i in `ls -S`
do
	tmp=`cat $i | sed 's/\/openSUSE\//\/DigiVoice\//g' | sed 's/ SUSE / DigiVoice /g'`
	echo -e "$tmp" > $i
done

# Example 2
for i in `ls -S`
do
	tmp=`cat $i | sed 's/blocked\-container/recording\-container/g' | sed 's/ SUSE / DigiVoice /g'`
	echo -e "$tmp" > $i
done

# Example 3
for i in `grep -rinl "408567" .`
do
	tmp=`cat $i | sed 's/408567/265881/g'`
	echo "files altered: $i"
	echo $tmp > $i
done
