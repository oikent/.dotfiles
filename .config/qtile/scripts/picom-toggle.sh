#!/bin/bash
if pgrep -x "picom" > /dev/null
then
	killall picom
else
	picom -b --experimental-backend --config $HOME/.config/qtile/scripts/picom.conf
fi
