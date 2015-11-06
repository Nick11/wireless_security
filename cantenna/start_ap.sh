echo sudo nmcli n off
sudo rfkill unblock 0
sudo ifconfig wlxe894f60967ea 192.168.10.1/24 up
sleep 1
hostapd -d /home/nick/eth/wireless/exercises/cantenna/hostapd.conf
