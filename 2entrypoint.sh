#!/bin/sh


any="0.0.0.0"

host=$1
port="22"
user="$2"
password="$3"

config=""
local="${any}:${port}"
remote="0.0.0.0:2822"

jump=""
options="$4"

sshpass -p $password ssh -o StrictHostKeyChecking=no $user@$host "$options" -T -w1:1 -L $remote:$local -vvv
