#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

git pull
ANSIBLE_NOCOWS=1 ansible-playbook -v ansible.yml
