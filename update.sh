#!/bin/bash

date >> updatelog.txt

if [[ $EUID -ne 0 ]]; then
  echo "Run this script again with root permissions. "
  echo "Execution failed due to insufficient permissions. " >> updatelog.txt
  exit 1
fi

runupdate(){
  sudo apt-get -y update
  sudo apt-get -y upgrade
}

runupdate | sed 's/^/        /' | tee -a updatelog.txt
