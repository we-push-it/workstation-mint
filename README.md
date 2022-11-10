# workstation-mint

some ansible scripts to setup a PUSH IT Workstation after installing Linux mint.

Planned:

- bashrc
- git setup
- some shortcuts
- yii2 Bash Completion: https://raw.githubusercontent.com/yiisoft/yii2/master/contrib/completion/bash/yii
- ...

... we will see ;)

# What will be installed?

 - git setup
 - some console tools like: figlet, htop, curl, ...
 - install flameshot: best screenshot tool
 - visual studio code
 - copy PUSH IT Wallpapers tu /usr/share/backgrounds 

for more details check the playbooks by your own

# Installation

Just clone the repo and run the ansible scripts or do with the installer.

# Installation with installer

Login as root via ssh or local and run:

    curl https://raw.githubusercontent.com/we-push-it/workstation-mint/master/install.sh | bash

or via user with sudo:

    curl https://raw.githubusercontent.com/we-push-it/workstation-mint/master/install.sh | sudo bash

# Remove some (maybe) unwanted Tools?

Remove Thunderbird

sudo ANSIBLE_NOCOWS=1 ansible-playbook -v ./playbooks/purge-thunderbird/purge-thunderbird.yml

