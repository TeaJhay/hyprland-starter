theme_files=(
    ".config/gtk-3.0/settings.ini"
    ".gtkrc-2.0"
    ".icons/default/index.theme"
    ".config/xsettingsd/xsettingsd.conf"
)

echo -e "${GREEN}"
figlet "Theme"
echo -e "${NONE}"
echo "The script can set dark mode setting through gsettings"

if gum confirm "Do you want to create a backup of theme files now"; then

    # Create backup folder
    if [ ! -d ~/ml4w/backup/themes ]; then
        mkdir -p ~/ml4w/backup/themes
    fi

    for tf in "${theme_files[@]}"; do
        if [ -d "$HOME/$tf" ]; then
            echo "::backup of $tf"
            cp -r "$HOME/$tf" "$HOME/ml4w/backup/themes/$tf"
        fi
    done

    echo "Backup done"
    echo "running commands"
# Set the GNOME schema
gnome_schema="org.gnome.desktop.interface"

# Apply the settings
gsettings set "$gnome_schema" gtk-theme 'Breeze-Dark'
gsettings set "$gnome_schema" icon-theme 'breeze-dark'
gsettings set "$gnome_schema" cursor-theme 'Oxygen_Zion'
    
    echo "Done!"
fi
