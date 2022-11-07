#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

echo "start install."

apt-get update
apt-get upgrade -y
apt-get install vim gnupg2 curl wget python3 python3-pip git -y
pip3 install ansible

ansible --version


if [ -d "./workstation-mint" ] 
then
    echo "Workstation path already exists." 
else
    echo "Workstation path not existing. Start cloning ..." 
    git clone https://github.com/we-push-it/workstation-mint.git
fi


cd workstation-mint
git pull --rebase
cd ..

ansible -m ping localhost > /dev/null

exit_status=$?

if [ $exit_status -ne 0 ]; then
    echo "Ansible cannot connect to localhost"
    exit 1
fi

cd workstation-mint
ANSIBLE_NOCOWS=1 ansible-playbook -v ansible.yml
cd ..

echo
echo "done."
echo
