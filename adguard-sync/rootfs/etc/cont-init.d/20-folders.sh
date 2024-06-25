#!/bin/bash

if [ -d /config/adguardhome-sync ] && [ ! -d /config/addons_config/adguardhome-sync ]; then
    echo "Moving to new location /config/addons_config/adguardhome-sync"
    mkdir -p /config/addons_config/adguardhome-sync
    chown -R "$PUID:$PGID" /config/addons_config/adguardhome-sync
    mv /config/adguardhome-sync/* /config/addons_config/adguardhome-sync/
    rm -r /config/adguardhome-sync
fi

if [ ! -d /config/addons_config/adguardhome-sync ]; then
    echo "Creating /config/addons_config/adguardhome-sync"
    mkdir -p /config/addons_config/adguardhome-sync
    chown -R "$PUID:$PGID" /config/addons_config/adguardhome-sync
fi
