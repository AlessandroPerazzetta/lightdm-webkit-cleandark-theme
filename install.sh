#!/bin/bash
echo "Installing lightdm-webkit2-greeter cleandark theme..."
mkdir -p /usr/share/lightdm-webkit/themes/cleandark
cp -R ./* /usr/share/lightdm-webkit/themes/cleandark/
echo "Theme installed."
