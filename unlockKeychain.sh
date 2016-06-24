#!/bin/bash

security unlock-keychain -p $(./decryptKey.sh $mac) /Users/djuretic/Library/Keychains/login.keychain