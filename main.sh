#!/bin/bash

echo "1. Displaying the Jobs"
echo "2. Build the job"
echo "3. Display the version"

echo "Please select the option "
read option

case $option in

	1)sh displaytheJobs.sh
	;;
    2)sh buildJob.sh
	;;
	3)sh jenkinsVersion.sh
	;;
    *)echo "Invalid Option.. Please select the correct one.."
	;;
esac
	
