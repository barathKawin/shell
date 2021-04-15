#!/bin/bash

echo "Please enter the job which you want to trigger."
read jobName

echo "Build the $jobName"
echo "------------------"
jenkinsUrl=`grep JENKINS_URL credentials.properties | cut -d = -f 2`
jenkinsUserName=`grep JENKINS_USER_NAME credentials.properties | cut -d = -f 2`
jenkinsToken=`grep JENKINS_TOKEN credentials.properties | cut -d = -f 2`

java -jar jenkins-cli.jar -s $jenkinsUrl -auth $jenkinsUserName:$jenkinsToken -webSocket build $jobName 


