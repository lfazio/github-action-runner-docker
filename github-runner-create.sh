#!/bin/bash

while getopts "u:r:t:" option
do
	case "${option}"
	in
		u) USER=${OPTARG};;
		r) REPOSITORY=${OPTARG};;
		t) TOKEN=${OPTARG};;
		h) echo "Usage: $0 -u <user> -r <repository> -t <token>"; exit 1;;
	esac
done

docker run --detach --restart=always \
	--env USER=${USER} \
	--env REPOSITORY=${REPOSITORY} \
	--env ACCESS_TOKEN=${TOKEN} \
	--name github-runner-${REPOSITORY} \
	github-runner-image