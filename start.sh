#!/bin/bash

USER=$USER
REPOSITORY=$REPOSITORY
ACCESS_TOKEN=$ACCESS_TOKEN

cd /home/docker/actions-runner

/bin/bash

./config.sh --url https://github.com/${USER}/${REPOSITORY} --token ${ACCESS_TOKEN}

cleanup() {
    echo "Removing runner..."
    ./config.sh remove --unattended --token ${REG_TOKEN}
}

trap 'cleanup; exit 130' INT
trap 'cleanup; exit 143' TERM

./run.sh & wait $!
