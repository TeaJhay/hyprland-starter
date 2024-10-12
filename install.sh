#!/bin/bash
#  _   _                    ____  _             _             
# | | | |_   _ _ __  _ __  / ___|| |_ __ _ _ __| |_ ___ _ __  
# | |_| | | | | '_ \| '__| \___ \| __/ _` | '__| __/ _ \ '__| 
# |  _  | |_| | |_) | |     ___) | || (_| | |  | ||  __/ |    
# |_| |_|\__, | .__/|_|    |____/ \__\__,_|_|   \__\___|_|    
#        |___/|_|                                             
#  

# ----------------------------------------------------- 
# Version
# ----------------------------------------------------- 
version=$(cat install/version)

# ----------------------------------------------------- 
# Library
# ----------------------------------------------------- 
source install/includes/library.sh

# ----------------------------------------------------- 
# Header
# ----------------------------------------------------- 
source install/includes/header.sh

# ----------------------------------------------------- 
# Check supported Linux distribution
# ----------------------------------------------------- 
source install/includes/checkdistro.sh

# ----------------------------------------------------- 
# Load Library for used distro
# ----------------------------------------------------- 
source install/$installer/library.sh

# ----------------------------------------------------- 
# Install required packages
# ----------------------------------------------------- 
source install/$installer/install_required.sh

# ----------------------------------------------------- 
# Confirm Start
# ----------------------------------------------------- 
source install/includes/confirm.sh

# ----------------------------------------------------- 
# Preparation
# ----------------------------------------------------- 
source install/includes/preparation.sh

# ----------------------------------------------------- 
# Install Hyprland Packages
# ----------------------------------------------------- 
source install/$installer/install_packages.sh

# ----------------------------------------------------- 
# Create Backup
# ----------------------------------------------------- 
source install/includes/backup.sh

# ----------------------------------------------------- 
# set Theme preferences
# ----------------------------------------------------- 
source install/includes/theme.sh

# ----------------------------------------------------- 
# Restore settings
# ----------------------------------------------------- 
source install/includes/restore.sh

# ----------------------------------------------------- 
# Keyboard
# ----------------------------------------------------- 
source install/includes/keyboard.sh

# ----------------------------------------------------- 
# Screen Resolution
# ----------------------------------------------------- 
source install/includes/monitor.sh

# ----------------------------------------------------- 
# KVM
# ----------------------------------------------------- 
source install/includes/kvm.sh

# ----------------------------------------------------- 
# Copy the configuration
# ----------------------------------------------------- 
source install/includes/copy.sh

# ----------------------------------------------------- 
# Reboot
# ----------------------------------------------------- 
source install/includes/reboot.sh
