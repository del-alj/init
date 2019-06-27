#!/bin/bash

sudo pgrep -u $1
sudo userdel -r -f $1
