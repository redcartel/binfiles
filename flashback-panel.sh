#! /bin/bash

if [ $LAUNCH_FLASHBACK == "1" ]; then
exec gnome-session --systemd --session=gnome-flashback-metacity --disable-acceleration-check "$@" &
exec /usr/lib/gnome-settings-daemon/gsd-xsettings &
fi
