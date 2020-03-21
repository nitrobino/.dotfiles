#!/bin/zsh

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Launch Polybar, using default config location ~/.config/polybar/config
#polybar main &
#polybar --reload eDP1 &
#polybar --reload HDMI1 &

#if type "xrandr"; then
#  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#    MONITOR=$m polybar --reload main &
#  done
#else
#  polybar --reload main &
#fi

my_laptop_external_monitor=$(xrandr --query | grep 'HDMI-1')
if [[ $my_laptop_external_monitor = *connected* ]]; then
	polybar --reload eDP1 &
	#polybar --reload HDMI1 &
else
	polybar --reload eDP1 &
fi

echo "Polybar launched..."
