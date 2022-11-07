#!/bin/bash

git pull
ANSIBLE_NOCOWS=1 ansible-playbook -v ansible.yml
