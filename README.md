# dotfile_ansible
Manage dotfile with ansible


# Package mandatory 
`zypper install git ansible` 


# Ansible configuration
` sudo vi /etc/ansible/hosts` 

` echo "[openSUSE]" >> /etc/ansible/hosts` 
` echo 'localhost ansible_connection=local ansible_python_interpreter="/usr/bin/env python3"' >> /etc/ansible/hosts` 


# Package for manual installation

listing :
- vlc-codecs

# Command to execute ansible installation 

`ansible-playbook main_base.yml --ask-become-pass --ask-vault-pass`
`ansible-playbook main_dev.yml --ask-become-pass --ask-vault-pass`
`ansible-playbook main_thinkpad.yml --ask-become-pass --ask-vault-pass`


# Tools to install/configure

## ProtonMail and Thunderbird 

For "protonmail-bridge", Follow the instruction : https://proton.me/support/install-bridge-linux-rpm-file

## Syncthing


## Use Propritary codecs

Testing for browser codecs (Youtube / Twitch / More ...)
`sudo zypper up --allow-vendor-change`




