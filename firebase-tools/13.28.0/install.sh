#!/bin/sh

for em in $(jq -rc '.emulators | keys | join("\n")' firebase.json)
do 
  echo "Downloading $em..."
  firebase setup:emulators:$em
  echo "Downloaded $em"
done
