#!/bin/sh

# Script used to save config from home to resources directory

DIR_ROOT=${HOME}

WRK_DIR="${DIR_ROOT}/Work/dotfile_ansible"
WRK_RES="${WRK_DIR}/resources"
WRK_CONF="${WRK_RES}/config"

DIR_CONF="${DIR_ROOT}/.config"

# Create Root config folder

[[ -d ${WRK_CONF}/root ]] || mkdir -p ${WRK_CONF}/root

# Copy alias file
cp ${DIR_ROOT}/.alias ${WRK_CONF}/root/alias

# Copy bashrc file
cp ${DIR_ROOT}/.bashrc ${WRK_CONF}/root/bashrc

# Copy zshrc file
cp ${DIR_ROOT}/.zshrc ${WRK_CONF}/root/zshrc

# Copy plasmashell Panel Config
[[ -d ${WRK_CONF}/plasma ]] || mkdir -p ${WRK_CONF}/plasma
cp ${DIR_CONF}/plasma-org.kde.plasma.desktop-appletsrc ${WRK_CONF}/plasma/plasma.appletsrc

# Copy tmux conf
[[ -d ${WRK_CONF}/tmux ]] || mkdir -p ${WRK_CONF}/tmux
cp ${DIR_CONF}/tmux/tmux.conf ${WRK_CONF}/tmux/tmux.conf 

# Copy nvim conf
[[ -d ${WRK_CONF}/nvim ]] || mkdir -p ${WRK_CONF}/nvim
cp -R ${DIR_CONF}/nvim ${WRK_CONF}/.



# Copy wallPaper
# cp ${DIR_ROOT}/Pictures/wall**.jpg ${WRK_CONF}/wallpaper/.

# Copy Kitty conf
cp -R ${DIR_CONF}/kitty ${WRK_CONF}/.



