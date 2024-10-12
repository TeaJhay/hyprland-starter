theme_files=(
    ".config/gtk-3.0/settings.ini"
    ".gtkrc-2.0"
    ".icons/default/index.theme"
    ".config/xsettingsd/xsettingsd.conf"

echo -e "${GREEN}"
figlet "Theme"
echo -e "${NONE}"
echo "The script can set dark mode setting through gsettings"
if gum confirm "Do you want to create a backup of theme files now" ;then

  #create backup folder
  if [ ! -d ~/ml4w/backup/themes ] ;then
      mkdir ~/ml4w/backup/themes
  fi

  for tf in "${theme_files[@]}"
  do
    if [ -d ~/$tf ] ;then
      echo "::backup of $tf"
      cp -r ~/$tf ~/ml4w/backup/themes/$tf
    fi
echo "Backup done"
echo "running commands"
  gsettings set $gnome-schema gtk-theme 'Adwaita-dark'
  gsettings set $gnome-schema icon-theme 'Breeze'
  gsettings set $gnome-schema cursor-theme 'Oxygen Zion'
echo "Done!"
