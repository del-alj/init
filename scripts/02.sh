#!/bin/bash

sudo pgrep -u $1
killall -KILL -u $1
sudo userdel -r $1

