#!/bin/sh


function forward() {
  local t=$1
  local r=$2
  local l=$3
  echo "-$t ${r}:${l}"
  
  fw_type="-L"
  fw_local="${any}:${port}"
  fw_remote="0.0.0.0:2822"
  fw="${fw_type} ${fw_remote}:${fw_local}"
  
  echo $fw
  return $fw
}

function config() {

any="0.0.0.0"
local config=""

local host=$1
local port="22"
local user="$2"
local password="$3"




jump=""
options="$4"
}


sshpass -p $password ssh -o StrictHostKeyChecking=no $user@$host "$options" -T -w1:1 -L $remote:$local -vvv
