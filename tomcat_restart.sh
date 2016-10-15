#!/bin/bash
#ps -ef | grep "java" | grep "11080" | cut -c 9-15 | xargs kill -9
kill -HUP `ps -ef | grep "java" | grep "11080" | awk '{print $2}'`
/picc/tomcat_picc4a/tc-4a-11080/bin/startup.sh &
