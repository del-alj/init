#!/bin/bash

echo -n "give a commit comment : "
read comit
git add -A
git commit -m "$comit"
git push
