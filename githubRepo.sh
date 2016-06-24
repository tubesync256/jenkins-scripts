#!/bin/bash

repository=$1
username=$2
password=$(./decryptKey.sh $3)
branch=$4

login="$username:$password@"
path=$(echo $repository | cut -c 9-)
url='https://'$login$path

git clone -b $branch --single-branch --depth 1 $url