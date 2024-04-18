# dotfile_ansible
Manage dotfile with ansible


# Package mandatory 
`zypper install git ansible` 


# Ansible configuration
- ` sudo vi /etc/ansible/hosts` 
- ` echo "[openSUSE]" >> /etc/ansible/hosts` 
- ` echo 'localhost ansible_connection=local ansible_python_interpreter="/usr/bin/env python3"' >> /etc/ansible/hosts` 


# Package for manual installation

listing :
- vlc-codecs
- ffmpeg-6

# Command to execute ansible installation 

- `ansible-playbook main_base.yml --ask-become-pass --ask-vault-pass`
- `ansible-playbook main_dev.yml --ask-become-pass --ask-vault-pass`
- `ansible-playbook main_thinkpad.yml --ask-become-pass --ask-vault-pass`

# Post install

1. Configure Firefox compact mode
    1. Use `about:config`
    2. Use `browser.comapctmode.show = true`
    3. Go to `Application menu > More Tools > Customize Bar`
    4. Use `Density > Compact`
2. Install [fzf](https://github.com/junegunn/fzf) (shortcut & more) 
    1. Exec `git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf`
    2. Exec `~/.fzf/install`
3. Install [Coursier](https://get-coursier.io/docs/cli-installation)
    1. Create Folder `mkdir ~/Tools`
    2. Go into the Folder `cd ~/Tools`
    3. Exec `curl -fL "https://github.com/coursier/launchers/raw/master/cs-x86_64-pc-linux.gz" | gzip -d > cs`
    4. Exec `chmod +x cs`
    5. Exec `./cs setup`


# Tools to install/configure

## ProtonMail and Thunderbird 

For "protonmail-bridge", Follow the instruction : https://proton.me/support/install-bridge-linux-rpm-file

## Syncthing


## Use Proprietary codecs

Testing for browser codecs (Youtube / Twitch / More ...)
`sudo zypper up --allow-vendor-change`

## Using Marksman to manage markdown with lspconfig (neovim)

1. Go to `https://github.com/artempyanykh/marksman/releases`
2. Download the binary
3. Create Folder `mkdir ~/Tools`
3. `mv marksman-linux ~/Tools/marksman && chmod +x ~/Tools/marksman`
4. Place the binary somewhere in your PATH
    1. Add in the `~/.bashrc` the line `export PATH=$PATH:/home/pragmatias/Tools`

## Using Yamlls to manage Yaml file with lspconfig (neovim)

1. Install the nodejs package `npm install -g yaml-language-server`

# Scripting

The `save_config.sh` script is used to get the needed config files into the repository


# WSL
TMUX not working :
- Use script init.sh 
- Modif sudoer 
    1. `sudo visudo`
    2. `pragmatias ALL=(root) NOPASSWD: /usr/bin/systemd-tmpfiles`
- Modif ~/.bashrc
    1. `./init.sh`

Use Existing Work Folder with SymLink :
`ln -s /mnt/d/Git ~/Work`

# Todo 

- Add OPI ?
