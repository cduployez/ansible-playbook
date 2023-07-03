# Configure Git
git config --global init.defaultBranch main
git config --global user.email "cduployez+githubpro@gmail.com"
git config --global user.name "cduployez"

# Install Sublime Text...
sudo snap install sublime-text --classic
# ... and its dependencies
sudo apt install libgl1
sudo apt install libcanberra-gtk-module libcanberra-gtk3-module

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

