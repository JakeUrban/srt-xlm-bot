#!/bin/sh

if [ -z "$(which curl)" ]; then
    echo "curl not installed. exitting.."
    exit 1
fi

curl -L https://github.com/stellar/kelp/releases/download/v1.9.0/kelp-v1.9.0-linux-amd64.tar | tar -xv
mv kelp-v1.9.0-linux-amd64 kelp