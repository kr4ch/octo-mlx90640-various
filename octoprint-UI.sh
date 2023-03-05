#!/bin/bash

function check_octoprint {
    pgrep -n octoprint > /dev/null
    return $?
}

until check_octoprint
do
    sleep 5
done

sleep 5s
chromium-browser http://127.0.0.1:5000 --display=:0 &
#sleep 10s;
#xte "key F11" -x:0
