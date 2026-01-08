# Action-LSC-Indoor-PTZ-Camera
Action LSC Indoor PTZ Camera hacking

<img width="650" height="786" alt="image" src="https://github.com/user-attachments/assets/7d7b43dd-4ab2-4d85-9022-8e9888387451" />

<img width="709" height="945" alt="image" src="https://github.com/user-attachments/assets/5b4f18b9-9a54-4c8f-a684-f6d34472124d" />

# Console
TX signal works, but no RX.

<img width="709" height="945" alt="image" src="https://github.com/user-attachments/assets/2b54bcbf-3a43-4eae-998d-bbef3066d4a9" />

Output:
```
U-Boot 2013.10.0-V3.1.28_bchV1.0.03 (Jul 13 2024 - 09:27:27)

DRAM:  64 MiB


sc3332_cropcap bounds.width:2304, bounds.height:1296                                                                                                                                                                                                                                                                        02
sc3332_s_crop 784, left:0, top:0, width:2304, height:1296
sc3332_cropcap bounds.width:2304, bounds.height:1296
set_interface mipi
set_pclk_polar pclk edge is rising
sc3332_sensor_get_parameter_func param:8199 not support
[atbm_log]:platform_init(247)
[atbm_log]:cmd_init next bf4f9bd0 bf4f9bd0
[atbm_log]:not support wifi6
[atbm_log]:atbm_get_chiptype, chipver=0x30, g_wifi_chip_type[25]
[atbm_log]:not support wifi6
[atbm_log]:atbm_get_chiptype, chipver=0x30, g_wifi_chip_type[25]
[atbm_log]:firmware_usb_wifi_bt_comb_ocea.h
[atbm_log]:ble_platform_probe(c32eaf20)
[atbm_log]:is registered as 'phy0'
[atbm_log]:crystal:0
[atbm_log]:==read /tmp/set_rate_power.txt fail==
[atbm_log]:==read /tmp/set_rate_power_5g.txt fail==
MAINCHN0 iomap c2d76000 82d76000 size:24576
SUBCHN0 iomap c2d88000 82d88000 size:6656
/usr/sbin/blue_led.sh: line 33: can't create /sys/class/leds/blue_led/brightness: nonexistent directory
/usr/sbin/blue_led.sh: line 39: can't create /sys/class/leds/blue_led/brightness: nonexistent directory
/usr/sbin/red_led.sh: line 33: can't create /sys/class/leds/red_led/brightness: nonexistent directory
/usr/sbin/red_led.sh: line 39: can't create /sys/class/leds/red_led/brightness: nonexistent directory
/usr/sbin/red_led.sh: line 33: can't create /sys/class/leds/red_led/brightness: nonexistent directory
sc3332_cropcap bounds.width:2304, bounds.height:1296
killall: udhcpc: no process killed
ifconfig: SIOCSIFADDR: No such device
cat: can't open '/sys/class/leds/blue_led/brightness': No such file or directory
sh: bad number
/usr/sbin/blue_led.sh: line 50: can't create /sys/class/leds/blue_led/trigger: nonexistent directory
/usr/sbin/blue_led.sh: line 51: can't create /sys/class/leds/blue_led/delay_off: nonexistent directory
/usr/sbin/blue_led.sh: line 52: can't create /sys/class/leds/blue_led/delay_on: nonexistent directory
killall: udhcpc: no process killed
/usr/sbin/red_led.sh: line 33: can't create /sys/class/leds/red_led/brightness: nonexistent directory
/usr/sbin/red_led.sh: line 39: can't create /sys/class/leds/red_led/brightness: nonexistent directory
ifconfig: SIOCSIFADDR: No such device
killall: udhcpc: no process killed
cat: can't open '/sys/class/leds/blue_led/brightness': No such file or directory
sh: bad number
/usr/sbin/blue_led.sh: line 50: can't create /sys/class/leds/blue_led/trigger: nonexistent directory
/usr/sbin/blue_led.sh: line 51: can't create /sys/class/leds/blue_led/delay_off: nonexistent directory
/usr/sbin/blue_led.sh: line 52: can't create /sys/class/leds/blue_led/delay_on: nonexistent directory
killall: wpa_supplicant: no process killed
/usr/sbin/red_led.sh: line 33: can't create /sys/class/leds/red_led/brightness: nonexistent directory
/usr/sbin/red_led.sh: line 39: can't create /sys/class/leds/red_led/brightness: nonexistent directory
[atbm_log]:ieee80211_conn_purge:conn state[IDLE]
udhcpc: started, v1.30.1
udhcpc: sending discover
udhcpc: sending discover
udhcpc: sending discover
udhcpc: sending discover
udhcpc: sending discover
udhcpc: sending discover
udhcpc: sending discover
udhcpc: sending discover
udhcpc: sending discover
udhcpc: sending discover
ifconfig: SIOCSIFADDR: No such device
killall: udhcpc: no process killed
[atbm_log]:ieee80211_conn_purge:conn state[IDLE]
killall: wifi_station.sh: no process killed
killall: wpa_supplicant: no process killed
killall: udhcpc: no process killed
udhcpc: started, v1.30.1
[atbm_log]:80M_adapter:82:ac:b9:65:09:38|00:00:00:00:00:00 used default 1
[atbm_log]:__ieee80211_conn_state_process:state[CHAN_ASYNC],auth[c32d15a0],assoc[  (null)],cookie[c322fc10]
[atbm_log]:ieee80211_chan_async_work_start:[0]
[atbm_log]:__ieee80211_conn_state_process:state[JOIN],auth[c32d15a0],assoc[  (null)],cookie[c322fc10]
[atbm_log]:[STA] Join DTIM: 1, interval: 100
[atbm_log]:__ieee80211_conn_state_process:state[AUTH_NEXT],auth[c32d15a0],assoc[  (null)],cookie[c322fc10]
[atbm_log]:ieee80211_sdata_queue_mlme_process:[0]
[atbm_log]:ieee80211_rx_mgmt_auth:conn state[AUTHENTICATING][0]
[atbm_log]:wlan0: authenticated
[atbm_log]:__ieee80211_conn_state_process:state[AUTHENTICATING],auth[c32d15a0],assoc[c33da900],cookie[c322fc20]
[atbm_log]:__ieee80211_conn_state_process:state[CHAN_ASYNC],auth[c32d15a0],assoc[c33da900],cookie[c322fc20]
[atbm_log]:__ieee80211_conn_state_process:state[JOIN],auth[c32d15a0],assoc[c33da900],cookie[c322fc20]
[atbm_log]:__ieee80211_conn_state_process:state[ASSOC_NEXT],auth[c32d15a0],assoc[c33da900],cookie[c322fc20]
[atbm_log]:5:163
[atbm_log]:ieee80211_rx_mgmt_assoc_resp:conn state[ASSOCIATING]
[atbm_log]:[82:ac:b9:65:09:38]:40M channel
[atbm_log]:wlan0: associated
[atbm_log]:ieee80211_chan_async_work_done:[1]
[atbm_log]:ieee80211_rx_mgmt_assoc_resp:rx assoc resp
[atbm_log]:[wlan0]:[8e88] deliver slow
udhcpc: sending discover
[atbm_log]:[wlan0]:[8e88] deliver slow
udhcpc: sending discover
[atbm_log]:sta_hdr
[atbm_log]:<WIFI> rx ampdu ++ 
```

# Firmware

Firmware dumping of WDC(?) 25QH64DH10 

<img width="446" height="328" alt="image" src="https://github.com/user-attachments/assets/e98d3642-10dc-4ad4-9e90-f250e14483f2" /><br/>

<img width="1260" height="945" alt="image" src="https://github.com/user-attachments/assets/d4cb696c-6cfa-497a-8615-1b270b7f7fc1" /><br/>

# Interesting file snippets

rc.local
```
#start system service
if test -f "/usr/sbin/main.sh" ;then
	/usr/sbin/main.sh &
else
	/etc/init.d/system_recover.sh &
fi
```
main.sh

```
cp /usr/sbin/service.sh /tmp/
/tmp/service.sh start &
```
service.sh

```
AP_MODE_FILE=_ht_ap_mode.conf

# 拷贝AP模式标识文件。
dd if="/mnt/${AP_MODE_FILE}" of="/tmp/${AP_MODE_FILE}" bs=1024 count=1
if test -f "/tmp/${AP_MODE_FILE}" ;then
    echo "Load AP Mode File."
    cp "/tmp/${AP_MODE_FILE}" /etc/config/hostapd.conf -rf
    cp /mnt/hostapd /tmp/
    # telnetd
fi
```

# Shell

```
root@proxy:~# telnet 172.30.6.78 24 
Trying 172.30.6.78...
Connected to 172.30.6.78.
Escape character is '^]'.

~ # whoami
root

~ # cat /proc/cpuinfo 
processor       : 0
model name      : ARM926EJ-S rev 5 (v5l)
BogoMIPS        : 351.43
Features        : swp half fastmult edsp java 
CPU implementer : 0x41
CPU architecture: 5TEJ
CPU variant     : 0x0
CPU part        : 0x926
CPU revision    : 5

Hardware        : AK39EV330
Revision        : 0000
Serial          : 0000000000000000

~ # ip a
1: lo: <LOOPBACK,UP,LOWER_UP> mtu 65536 qdisc noqueue qlen 1
    link/loopback 00:00:00:00:00:00 brd 00:00:00:00:00:00
    inet 127.0.0.1/8 scope host lo
       valid_lft forever preferred_lft forever
4: wlan0: <BROADCAST,MULTICAST,UP,LOWER_UP> mtu 1500 qdisc mq qlen 1000
    link/ether 58:c5:87:88:7d:19 brd ff:ff:ff:ff:ff:ff
    inet 172.30.6.78/16 brd 172.30.255.255 scope global wlan0
       valid_lft forever preferred_lft forever
5: p2p0: <BROADCAST,MULTICAST> mtu 1500 qdisc noop qlen 1000
    link/ether 5a:c5:87:88:7d:19 brd ff:ff:ff:ff:ff:ff

~ # ps aux
PID   USER     TIME  COMMAND
    1 root      0:00 init
    2 root      0:00 [kthreadd]
    3 root      0:00 [ksoftirqd/0]
    4 root      0:00 [kworker/0:0]
    5 root      0:00 [kworker/0:0H]
    6 root      0:00 [kworker/u2:0]
    7 root      0:00 [kdevtmpfs]
    8 root      0:00 [kworker/u2:1]
   91 root      0:00 [writeback]
   93 root      0:00 [crypto]
   94 root      0:00 [bioset]
   96 root      0:00 [kblockd]
  125 root      0:01 [kworker/0:1]
  132 root      0:00 [kswapd0]
  183 root      0:00 [fsnotify_mark]
  216 root      0:00 [bioset]
  219 root      0:00 [bioset]
  222 root      0:00 [bioset]
  225 root      0:00 [bioset]
  228 root      0:00 [bioset]
  231 root      0:00 [bioset]
  234 root      0:00 [bioset]
  237 root      0:00 [bioset]
  245 root      0:00 [spi0]
  249 root      0:00 [bioset]
  254 root      0:00 [bioset]
  259 root      0:00 [bioset]
  264 root      0:00 [bioset]
  269 root      0:00 [bioset]
  274 root      0:00 [bioset]
  279 root      0:00 [bioset]
  284 root      0:00 [bioset]
  301 root      0:00 [deferwq]
  302 root      0:03 [kworker/0:2]
  303 root      0:00 [kworker/0:1H]
  327 root      0:00 [jffs2_gcd_mtd6]
  332 root      0:00 syslogd -D -n -O /var/log/messages -s 200 -b 3
  333 root      0:00 klogd -n
  353 root      0:00 [kworker/u2:2]
  360 root      0:00 [bioset]
  361 root      0:00 [mmcqd/0]
  563 root      0:00 sh /tmp/drop_caches.sh
  595 root      0:33 anyka_ipc
  597 root      0:00 {daemon_main} daemon
  606 root      0:00 [cfg80211]
  619 root      0:00 [usb_otg_wq]
  635 root      0:00 [phy0-atbm_wq]
  636 root      0:00 [phy0-atbm_prvmg]
  638 root      0:00 [phy0-atbm_usb_b]
  660 root      0:00 [phy0-ble_recv]
  661 root      0:00 [phy0-ble_xmit]
  670 root      0:00 {hack.sh} /bin/sh /mnt/hack.sh
  674 root      0:00 telnetd -p 24 -l /bin/sh
  720 root      0:00 [kworker/0:3]
  832 root      0:00 wpa_supplicant -B -iwlan0 -Dnl80211 -c /tmp/wpa_supplicant.conf
  875 root      0:00 sleep 10
  885 root      0:00 /bin/sh
  889 root      0:00 sleep 5
  895 root      0:00 ps aux

/tmp # netstat -anpt
Active Internet connections (servers and established)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name    
tcp        0      0 0.0.0.0:24              0.0.0.0:*               LISTEN      674/telnetd
tcp        0      0 0.0.0.0:6668            0.0.0.0:*               LISTEN      595/anyka_ipc
tcp        0      0 172.30.6.78:18921       18.185.146.33:8886      ESTABLISHED 595/anyka_ipc
tcp        0      0 172.30.6.78:24          172.30.0.254:40146      ESTABLISHED 674/telnetd
```
