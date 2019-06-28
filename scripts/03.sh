#!/bin/bash
read -p "give a commit comment : " comit
norminette | grep Error | cut -d ' ' -f 1 > cheek
if [ cheek == 'Error']
then
	echo "Error please cheek the norminette"
	exit;
else
	git add -A
	git commit -m "$comit"
	git push
fi
