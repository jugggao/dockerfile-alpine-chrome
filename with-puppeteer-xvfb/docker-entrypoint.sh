#!/bin/sh
XVFB_WHD=${XVFB_WHD:-1920x1080x24}

echo "Starting Xvfb"
Xvfb :99 -ac -screen 0 $XVFB_WHD -nolisten tcp -nolisten unix &
sleep 2

echo "Executing command $@"
export DISPLAY=:99

exec "$@"