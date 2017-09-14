#! /bin/bash

# Basic Setup Process for DevBox

# Install Pip for Default Python
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
python get-pip.py

# Install Ansible
pip install ansible

# Install git
yum install git

# Create base directories
mkdir coding

# Clone Sandbox Repo
cd coding
git clone https://github.com/DevNetSandbox/sbx_devbox

# Run Playbook
cd sbx_devbox/devbox_build
ansible-playbook -i hosts devbox.yml
