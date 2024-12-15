# if type "xrandr"; then
#   for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
#     MONITOR=$m polybar --reload example &
#   done
# else
#   polybar --reload example &
# fi
# 
# 

# Kill any existing polybar processes
killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch a single Polybar instance for all monitors
polybar --reload example &

# Launch Polybar for each connected monitor
#for monitor in $(xrandr --listmonitors | awk '{print $4}' | grep -v '^$' ); do
#    MONITOR=$monitor polybar --reload example &
#done
