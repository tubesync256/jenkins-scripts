#!/bin/bash

if [ "$1" == '' ]
then
	echo 'Repository argument is not supplied!'
	exit -1
fi

if [ "$2" == '' ]
then
	echo 'Username argument is not supplied!'
	exit -1
fi

if [ "$3" == '' ]
then
	echo 'Password argument is not supplied!'
	exit -1
fi

if [ "$4" == '' ]
then
	echo 'Branch argument is not supplied!'
	exit -1
fi

./githubRepo.sh $1 $2 $3 $4