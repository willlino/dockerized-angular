#!/bin/bash


# Se a pasta node modules não existir, roda o npm install
if [ -d "node_modules" ];
  then 
    echo "node_modules already exists";
  else 
    npm install --verbose --unsafe-perm;
  fi;

npm start