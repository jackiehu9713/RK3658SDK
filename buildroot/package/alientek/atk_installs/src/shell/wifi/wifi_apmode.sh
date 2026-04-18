#注意可能是rkill1,如果5G不配置的情况下，默认5G是配置的,rfkill0是蓝牙的
echo 0 > /sys/class/rfkill/rfkill2/state
sleep 2
echo 1 > /sys/class/rfkill/rfkill2/state
sleep 2

if [[ "$(pidof dnsmasq)" != "" ]]
then
    kill -9 $(pidof dnsmasq)
fi

if [[ "$(pidof hostapd)" != "" ]]
then
    kill -9 $(pidof hostapd)
fi
connmanctl disable wifi
rfkill unblock all
ifconfig wlan0 down
sleep 1
ifconfig wlan0 up
sleep 1
dnsmasq -C dnsmasq.conf
ifconfig wlan0 192.168.4.1
hostapd hostapd.conf -B

