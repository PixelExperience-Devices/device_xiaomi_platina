#!/vendor/bin/sh
WLANADDRESSVENDOR=/data/vendor/mac_addr/wlan_mac.bin
/vendor/bin/cp /persist/wlan_bt/bt.mac /data/vendor/mac_addr/bt.mac
/vendor/bin/cp /persist/wlan_bt/wlan.mac /data/vendor/mac_addr/wlan.mac
wlan_mac=`cat /persist/wlan_mac.bin`
echo $wlan_mac > $WLANADDRESSVENDOR
chown -h system.system /data/vendor/mac_addr/*
chmod 0644 /data/vendor/mac_addr/*
