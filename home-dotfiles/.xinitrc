xrdb ~/.Xresources
unclutter &
#compton -b --backend glx --vsync opengl-swc
export PATH="${PATH}:${HOME}/scripts:${HOME}/.local/bin"

# Start Gnome-keyring
dbus-update-activation-environment --systemd DISPLAY
eval $(/usr/bin/gnome-keyring-daemon --start --components=pkcs11,secrets,ssh)
export SSH_AUTH_SOCK

exec i3 --shmlog-size=26214400
