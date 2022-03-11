#!/bin/bash

ID=$(id -u)
if [ $ID -ne 0 ]; then
  echo "make sure you are a root user to run this"
  exit 1
fi

rm -rf /tmp/nexus.log
LOG=/tmp/nexus.log

alias python=python3
#N=$(id nexus)
#if [ $N -ne 0 ]; then
#  useradd nexus
#  exit
#else
#  echo "user already there"
#  exit 1
#fi
yum install python -y &>>${LOG}
echo -e '/e[1;33m Python installation/e[0m'

yum install ansible -y &>>${LOG}
echo -e '/e[1;33m ansible installation/e[0m'
