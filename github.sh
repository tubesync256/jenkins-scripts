#!/usr/bin/expect -f

set REPO [lindex $argv 0];
set UNAME [lindex $argv 1];
set PASS [lindex $argv 2];

spawn git clone $REPO

expect "?sername*"
send "$UNAME\r"
expect "?ssword*"
send "$PASS\r"
expect eof