#!/bin/bash

/home/hass/.homeassistant/bin/certbot_upnp.sh add
~/certbot/certbot-auto renew --no-self-upgrade --standalone --preferred-challenges tls-sni-01 --tls-sni-01-port 8124
/home/hass/.homeassistant/bin/certbot_upnp.sh remove

sudo systemctl restart home-assistant@hass.service