#!/bin/bash

cd "/home/hass/.homeassistant"
sudo git fetch
commits="$(sudo git rev-list --count master..origin/master)"

curl -X POST -H "x-ha-access: $1" -H "Content-Type: application/json" https://127.0.0.1:8123/api/states/sensor.new_commits -d "{\"state\": \"$commits\"}" -k
