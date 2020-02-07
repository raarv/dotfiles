#!/bin/bash

SOURCE=$(pactl list sources | grep "Name" | grep -v "monitor" | sed "s/^.*Name: //" | dmenu -p sources: -i)
SINK=$(pactl list sinks | grep "Name" | sed "s/^.*Name: //" | dmenu -p sinks: -i)


if [ $SINK ] && [ $SOURCE ]; then
	pactl set-default-sink $SINK
	pactl set-default-source $SOURCE
	notify-send "Sound sink/source update" "Sink: $SINK\nSource: $SOURCE"
else
	notify-send "Sound sink/source update" "Empty Sink or Source. No changes applied."
fi
