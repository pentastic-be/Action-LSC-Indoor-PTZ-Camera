#!/bin/sh
PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin
MODE=$1
POWER_GPIO=0
usage()
{
	echo "Usage: $0 MODE"
	echo "       MODE:   ap | sta | stop "
	echo "               ap         Start wifi as ap role"
	echo "               sta        Start wifi as station role"
	echo "               stop        Stop  wifi "
}

wifi_stop()
{
	ifconfig wlan0 down
	killall wpa_supplicant
	killall udhcpc
	killall udhcpd
	killall hostapd
	rmmod ATBM6x6x_wifi_usb
	rmmod ak_hcd
	rmmod usbcore
	rmmod usb-common
	rmmod mac80211
	rmmod cfg80211
}

driver_install()
{
	wifi_stop
	echo $POWER_GPIO > /sys/class/gpio/export
	echo out > /sys/class/gpio/gpio$POWER_GPIO/direction
	echo 1 > /sys/class/gpio/gpio$POWER_GPIO/value  # 设置GPIO为高电平
	sleep 1
	echo 0 > /sys/class/gpio/gpio$POWER_GPIO/value
	echo $POWER_GPIO > /sys/class/gpio/unexport
	insmod	/usr/modules/cfg80211.ko
	insmod	/usr/modules/mac80211.ko
	insmod	/usr/modules/usb-common.ko
	insmod	/usr/modules/usbcore.ko
	insmod	/usr/modules/ak_hcd.ko 
	insmod  /usr/modules/ATBM6x6x_wifi_usb.ko wifi_bt_comb=1 atbm_printk_mask=0
	sleep 2
	ifconfig wlan0 up
}

check_wifi_driver()
{
	a=`ifconfig -a | grep wlan0 | wc -l`
	return $a
}

# Mount SD on location that won't be umounted by device
mkdir -p /tmp/sd
mount /dev/mmcblk0p1 /tmp/sd

# Mark that this runs
if [ ! -e /tmp/sd/hack ]; then
 touch /tmp/sd/hack
fi

# If we don't have a copy of the application yet
if [ ! -e /tmp/sd/anyka_ipc ]; then
 cp /usr/bin/anyka_ipc /tmp/sd
fi

# Remove AP mode file
rm -f /tmp/_ht_ap_mode.conf

# Reset wifi to client mode (same as it wifi_driver would have done)
        driver_install
		ifconfig wlan0 up
		check_wifi_driver
		if [ $? = 0 ]; then	
			echo "not atbm wifi." 
		else
			touch /tmp/wifi_is_atbm6132c

		fi
        #wpa_supplicant -Dnl80211 -i wlan0 -c /etc/config/wpa_supplicant.conf -B
        #sleep 1
        #udhcpc -i wlan0

# If we have a patched application, use it
if [ -e /tmp/sd/anyka_ipc_rtsp ]; then
 echo "export LD_LIBRARY_PATH=/lib:/usr/lib:/tmp/sd" > /tmp/anyka_ipc_rtsp
 echo "echo 'tilt_total_steps = 2200' >> /tmp/_ht_hw_settings.ini" >> /tmp/anyka_ipc_rtsp
 echo "/tmp/sd/anyka_ipc_rtsp 2>&1 | /tmp/sd/log_parser.sh /dev/null" >> /tmp/anyka_ipc_rtsp
 chmod +x /tmp/anyka_ipc_rtsp
 cp /usr/local/_ht_hw_settings.ini /tmp/
 mount --bind /tmp/_ht_hw_settings.ini /etc/config/_ht_hw_settings.ini
 mount --bind /tmp/anyka_ipc_rtsp /usr/bin/anyka_ipc
fi

# Run custom.sh on SD card every 10 seconds (like we do on other devices)
(while true; do /tmp/sd/custom.sh; sleep 10; done ) < /dev/null >& /dev/null &
