#!/bin/sh

# clone
mkdir -p /tmp/load_fonts

cd /tmp/load_fonts

git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts


wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.0/FiraCode.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.0/FiraMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.0/Hack.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.0/Mononoki.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.0/Noto.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.0/RobotoMono.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.0/Ubuntu.zip
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.0/UbuntuMono.zip

# Install fonts
ls *.zip | xargs -l unzip -o -d ./tmp
sudo cp ./tmp/*.ttf /usr/share/fonts/.
rm -rf ./tmp

# clean tmp folder
rm -rf /tmp/load_fonts
