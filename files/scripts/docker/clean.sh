#!/bin/bash

if [[ $(docker images | grep "^<none>" | awk '{print $3}') ]]; then
  sudo docker rmi $(docker images | grep "^<none>" | awk '{print $3}')
else
  echo "Rien a faire"
  exit 0
fi

