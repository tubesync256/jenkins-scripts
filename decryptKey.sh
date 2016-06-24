#!/bin/bash

if [ "$1" == '' ]
then
	echo 'Encrypted key is not supplied!'
	exit -1
fi

key="$(cat /Users/djuretic/Desktop/Jenkins/meta/key.txt)"
echo "$1" | openssl enc -d -aes-256-cbc -a -pass pass:$key