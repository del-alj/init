#!/bin/bash

echo "give a commit comment : "
read comit
norminette
git add -A
git commit -m "$comit"
git push
