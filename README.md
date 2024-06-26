LightDM Webkit Cleandark Theme
===========================

This is a LightDM webkit greeter theme. Based on [LightDM Webkit Arch Theme](https://github.com/shosca/lightdm-webkit-archlinux-theme)

Installation Instructions
-------------------------

## Automatic installation with script:

Run script to automatically install lightdm-webkit2-greeter, cleandark theme and update settings.

<pre>
git clone https://github.com/AlessandroPerazzetta/lightdm-webkit-cleandark-theme.git
cd lightdm-webkit-cleandark-theme
sudo bash install.sh
</pre>

## Manual installation:

You will need lightdm as your login manager and the lightdm-webkit2-greeter from AUR.

<pre>
yay -S lightdm-webkit2-greeter
</pre>

You need to make the webkit greeter the default greeter. This is done by editing the lightdm configuration under:

<pre>
/etc/lightdm/lightdm.conf
</pre>

and changing the greeter-session value to lightdm-webkit2-greeter. lightdm.conf should have:

<pre>
[Seat:*]
greeter-session=lightdm-webkit2-greeter
user-session=bspwm
allow-guest=false
session-wrapper=/etc/lightdm/Xsession
</pre>

The second step is to clone repository:

<pre>
git clone https://github.com/AlessandroPerazzetta/lightdm-webkit-cleandark-theme.git
</pre>

and install the actual theme. This is done by copying the files of this repository into the following location:

<pre>
/usr/share/lightdm-webkit/themes/cleandark
</pre>

Finally, change the /etc/lightdm/lightdm-webkit2-greeter.conf file to contain the following line:

<pre>
webkit_theme=cleandark
</pre>

Now you can reboot and enjoy the new theme.
