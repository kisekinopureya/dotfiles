#!/bin/sh
. ~/.profile
setmonitor &
export $(dbus-launch)
xcompmgr -c &
mpc rescan &
mpd &
xrdb .Xresources
dwmblocks &
redshift -l $(curl -s "https://location.services.mozilla.com/v1/geolocate?key=geoclue" | awk 'OFS=":" {print $3,$5}' | tr -d ',}') &
xautolock -time 10 -locker slock &
syncthing &
xbanish &
while true :
do
	dwm
done
