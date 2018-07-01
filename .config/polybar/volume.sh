#!/bin/sh

ISMUTED=$(pacmd list-sinks | grep -E "(^	muted: (yes|no)\$)|(^	name: <alsa_output.usb-FiiO_DigiHug_USB_Audio-01.iec958-stereo>\$)" | grep -A1 a | tail -1 | grep -oE "(yes|no)")
VOLUME=$(mpc volume | grep -oE "[0-9]+")
ICON=$([ $ISMUTED = no ] && ([ -n "$VOLUME" ] && ([ $VOLUME -lt 50 ] && ([ $VOLUME -le 0 ] && echo  || echo ) || echo ) || echo ) || echo )
echo "%{F#888}$ICON%{F-}$([ -n "$VOLUME" ] && echo " $VOLUME%")"
