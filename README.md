# ansible-playbook

# General information

## Graphical applications
* Sublime Text : `subl`
* Gitkraken : `gitkraken&`
* Visual Studio Code : `code`
* Intellij : `intellij-idea-community`
* Webstorm: `webstorm`

# Pre-requisites

## Don't type password for root

As root, append line in `/etc/sudoers`:

```sh
cduployez ALL=(ALL) NOPASSWD: ALL
```

# Configure Git SSH

Link: https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

Run command:
```sh
ssh-keygen -t ed25519 -C "cduployez+githubpro@gmail.com"
```

Copy public key from `~/.ssh` to [Github > Settings > SSH and GPG keys](https://github.com/settings/keys)

# Install Ansible Playbook

## Install dependencies

Link: https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html

### Install pip

```sh
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python3 get-pip.py --user
```

Verify install with: python3 -m pip -V

### Install Ansible
```sh
python3 -m pip install --user ansible
```

Append to ~/.bashrc:
```sh
export PATH="$PATH:/home/cduployez/.local/bin"
```

# Run Ansible Playbook

Clone project:
```sh
git clone git@github.com:cduployez/ansible-playbook.git
```

Run playbook:
```sh
cd ansible-playbook
ansible-playbook playbook.yaml
```

## Install VcXsrv

* Download VcXsrv (https://sourceforge.net/projects/vcxsrv/) and install
* Add shortcut to shell:startup (https://medium.com/javarevisited/using-wsl-2-with-x-server-linux-on-windows-a372263533c3)
      * Open Startup folder: `Win+R` > Type `shell:startup`
      * Create a Windows shortcut with target: `"C:\Program Files\VcXsrv\vcxsrv.exe" :0 -ac -terminate -lesspointer -multiwindow -clipboard -wgl -dpi auto -noreset`
      * Run shortcut or reboot PC
      * Allow private and public networks on first usage
      * Taskbar status icon should appear: Uncheck `Clipboard may use PRIMARY selection`
* Add to ~/.zhsrc:
```sh
      # https://gist.github.com/djfdyuruiry/3150b9e5f3dadba89ea323df49ea7ab1
      # X Server
      export $(dbus-launch) # not needed if you have systemd enabled
      export LIBGL_ALWAYS_INDIRECT=1
      export WSL_HOST=$(cat "/etc/resolv.conf" | grep nameserver | awk '{print $2}' )
      export DISPLAY="${WSL_HOST}:0"
```

# Links

# gcloud CLI overview

https://cloud.google.com/sdk/gcloud

Cheat sheet: https://cloud.google.com/sdk/docs/cheatsheet
