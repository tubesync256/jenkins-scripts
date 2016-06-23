#!/usr/bin/expect -f

spawn fastlane init

expect "*iOS*"
send "y\r"
expect eof