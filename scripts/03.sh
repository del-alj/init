#!/bin/bash

read -p "give a commit comment : " comit
norm="$(norminette | grep Error | head -1 | cut -d ' ' -f 1)"
if [ -n "$norm" ]
then
	echo "Error please check the norminette !!"
	read -p "Do You want To Check Them Now !! y or n : " answer
	if [ "$answer" == "y" ]
	then
		norminette
	else
		exit;
	fi
else
	find . -type f -name "*.o" -exec rm {} \;
	find . -type f -name ".*sw*" -exec rm {} \;
	find . -type f -name "*.DS_Store" -exec rm {} \;
	find . -type f -name "main.c" -exec rm -i {} \;
	find . -type f -name "a.out" -exec rm -i {} \;
	git add -A
	git commit -m "$comit"
	git push
fi
