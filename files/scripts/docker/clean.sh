#!/bin/bash

if [[ $(docker images | grep "<none>") ]]; then
  for id in $(docker images | grep '<none>' | awk '{print $3}'); do
    echo "Delete $id"
    docker rmi $id
  done
else
  echo "Rien a faire"
  exit 0
fi

