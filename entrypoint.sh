#!/bin/sh

sshpass -p $3 ssh -o StrictHostKeyChecking=no $2@$1 "$4" -T -w1:1 -L 0.0.0.0:2222:0.0.0.0:22 -vvv
