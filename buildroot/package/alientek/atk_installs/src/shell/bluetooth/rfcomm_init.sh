if [[ "$(pidof rfcomm)" != "" ]]
then
    kill -9 $(pidof rfcomm)
fi
if [[ "$(pidof bluetoothd)" != "" ]]
then
    kill -9 $(pidof bluetoothd)
fi
/usr/libexec/bluetooth/bluetoothd -C &
sleep 1
hciconfig hci0 piscan
hciconfig hci0 noauth
sleep 1
sdptool add SP
sleep 1
rfcomm watch hci0 &
echo "rfcomm init finished! please use bluetoothctl cmd to pair your device and then connect it!"
