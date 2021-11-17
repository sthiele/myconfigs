#!/usr/bin/env bash

lookandfeeltool -a org.kde.breezedark.desktop
echo "[Settings]
gtk-application-prefer-dark-theme=1
gtk-button-images=1
gtk-cursor-theme-name=breeze_cursors
gtk-decoration-layout=:minimize,maximize,close
gtk-enable-animations=1
gtk-fallback-icon-theme=breeze
gtk-font-name=Noto Sans,  12
gtk-icon-theme-name=breeze-dark
gtk-menu-images=1
gtk-primary-button-warps-slider=0
gtk-theme-name=Adwaita-dark
gtk-toolbar-style=GTK_TOOLBAR_BOTH_HORIZ" > ~/.config/gtk-3.0/settings.ini

qdbus org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript '
    var allDesktops = desktops();
    print (allDesktops);
    for (i=0;i<allDesktops.length;i++) {{
        d = allDesktops[i];
        d.wallpaperPlugin = "org.kde.image";
        d.currentConfigGroup = Array("Wallpaper",
                                     "org.kde.image",
                                     "General");
        d.writeConfig("Image", "file://home/sthiele/Pictures/low_poly-abstract-inverted.jpg")
    }}
'

# set background image for kscreenlocker
# kwriteconfig5 --file kscreenlockerrc --group Greeter --group Wallpaper --group org.kde.image --group General --key Image "file://home/sthiele/Pictures/low_poly-abstract-inverted.jpg"

# set geary style dark
# cp ~/.config/geary/user-style-dark.css ~/.config/geary/user-style.css
