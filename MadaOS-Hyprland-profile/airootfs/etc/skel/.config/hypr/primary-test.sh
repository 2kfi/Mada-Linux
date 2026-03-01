#!/bin/bash

if hyprctl monitors | grep -a "HDMI-A-1" > /dev/null || xrandr | grep "HDMI" > /dev/null ; then
    cat << EOF > /home/2kfi/.config/hypr/primary.conf
\$primary=HDMI-A-1
EOF
    cat << EOF > /home/2kfi/.config/hypr/primary-gdm.conf
PRIMARY_DISPLAY=HDMI-1
EOF
elif hyprctl monitors | grep -a "LVDS-1" > /dev/null || xrandr | grep "HDMI" > /dev/null  ; then
    cat << EOF > /home/2kfi/.config/hypr/primary.conf
\$primary=LVDS-1
EOF
    cat <<  EOF > /home/2kfi/.config/hypr/primary-gdm.conf
PRIMARY_DISPLAY=LVDS-1
EOF
else
    cat << EOF > /home/2kfi/.config/hypr/primary.conf
\$primary=LVDS-1
EOF
fi
echo "done"
