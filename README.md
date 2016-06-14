# i3-xfce

Here are my awesome config files that allow you to run i3wm with XFCE4, with rofi for the program launcher and terminator as a drop-down terminal. Hotkeys are set for the most part to honor i3wm defaults. As some colors are set for rofi and windowsin  the i3 config, it's recommended to run Numix Arch Blue as the GTK theme. I also recommend elementary-xfce-icons because they're the default for the awesome Xubuntu distribution known for it's amazing XFCE4 implementation.

Dependencies:

* `compton`
* `feh`
* `rofi`
* `redshift`
* `caffeine-ng`<sup>AUR</sup>
* `blockify`<sup>AUR</sup>
* `terminator`
* `xfce4, xfce4-goodies`
* `i3-wm`
* `eog`
* `nautilus`
* `gimp`
* `colorgrab`<sup>AUR</sup>
* `ttf-ubuntu-font-family`
* `numix-themes-archblue-git`<sup>AUR</sup>
* `elementary-xfce-icons`<sup>AUR</sup>
* `scrot`
* `gnome-keyring`

Installation:

First install your graphics drivers and get xorg running on your base installation.

Drivers:

* [`For Nvidia`](https://wiki.archlinux.org/index.php/NVIDIA)
* [`For Hybrid Intel/Nvidia Graphics with Bumblebee`](https://wiki.archlinux.org/index.php/Bumblebee)
* [`For AMD`](https://wiki.archlinux.org/index.php/ATI)
* [`For Intel`](https://wiki.archlinux.org/index.php/Intel_graphics)

For xorg, while installing your graphics drivers usually xorg-server and other necessary dependencies get pulled in, some are missing though, they are:

* `xterm` `xorg-xclock` <sup>optional but started by default xinit config file</sup>

For audio install these packages and run "alsamixer" to unmute your main speaker:

* `alsa-utils pulseaudio pavucontrol`

Configure xinitrc to run xfce4, start it, and configure it with your desired panel setup. Refer to the [Arch wiki](https://wiki.archlinux.org/index.php/Xinitrc) for detailed instructions.:

* `sudo cp /etc/X11/xinit/xinitrc ~/.xinitrc && sudo chown -R roman ~/.xinitrc`
* `nano .xinitrc`

Delete all lines in the file after the final "fi" and add on a new line "exec xfce4-session" and run startx:

* `exec xfce4-session`
* `startx`

Configure xorg to auto-start at boot by following the instructions on the [Arch wiki](https://wiki.archlinux.org/index.php/Xinitrc#Autostart_X_at_login)

Copy the default config file to your home directory:

* `sudo cp -r /etc/skel/.bash_profile ~/.bash_profile && sudo chown -R roman ~/*`
 
Edit .bash_profile with nano and add the line below to the bottom of the config:

* `sudo nano .bash_profile`
* `[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx`
 
Now open xfce4-desktop-settings in xfce4 and navigate to the session tab, click clear saved sessions.

Don't forget to remove xfdesktop, otherwise it'll load as a window in workspace 1 in i3. I haven't yet discovered a way to make the desktop work in i3wm, but if I do, I'll post about it...:

* `sudo pacman -Rs xfdesktop`

Copy these configs to your .config directory using, reboot, login and enjoy:

* `reboot`

Please report issues with these instructions, report bugs, and contribute on [Github!](https://github.com/RomanSC/.config)
