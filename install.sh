#!/bin/bash
echo "Installing lightdm-webkit2-greeter..."
yay -S lightdm-webkit2-greeter
echo "Installing lightdm-webkit2-greeter cleandark theme..."
mkdir -p /usr/share/lightdm-webkit/themes/cleandark
cp -R ./* /usr/share/lightdm-webkit/themes/cleandark/
echo "Theme installed."
cp /etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf.ORI
sed -i 's/\(greeter-session=\)\(.*\)/\1lightdm-webkit2-greeter/' /etc/lightdm/lightdm.conf
echo "Lightdm config file saved to /etc/lightdm/lightdm.conf.ORI"
sed -i 's/\(user-session=\)\(.*\)/\1bspwm/' /etc/lightdm/lightdm.conf
echo "Lightdm config file /etc/lightdm/lightdm.conf updated"
echo "Check greeter-session, user-session values are fine ..."
echon "\n"
cp /etc/lightdm/lightdm-webkit2-greeter.conf /etc/lightdm/lightdm-webkit2-greeter.conf.ORI
echo "Lightdm webkit2 config file saved to /etc/lightdm/lightdm-webkit2-greeter.conf.ORI"
sed -i 's/\(webkit_theme=\)\(.*\)/\1cleandark/' /etc/lightdm/lightdm-webkit2-greeter.conf
echo "Lightdm webkit2 config file /etc/lightdm/lightdm-webkit2-greeter.conf updated"
echo "Check webkit_theme value is fine ..."


