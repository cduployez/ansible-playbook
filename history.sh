# Install Ansible
Link: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

## Install pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
# Verify install with: python3 -m pip -V

## Install Ansible
python3 -m pip install --user ansible

# Add to ~/.bashrc
# export PATH="$PATH:/home/cduployez/.local/bin"

# Install gantsign.intellij role
ansible-galaxy install gantsign.intellij

