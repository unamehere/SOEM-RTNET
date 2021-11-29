#!/bin/bash

devices="0000:03:00.0 0000:03:00.1 0000:04:00.0 0000:04:00.1"
driver="igb"
rtdriver="rt_igb"

case "$1" in
    start)

        modprobe rtpacket

        dev_num=0

        for dev in $devices; do

            if [ -d /sys/bus/pci/devices/$dev/driver ]; then
            echo $dev unbind $driver
	    echo -n $dev > /sys/bus/pci/drivers/$driver/unbind
            fi
	    echo $dev bind $rtdriver
            echo -n $dev > /sys/bus/pci/drivers/$rtdriver/bind
	    echo rtifconfig rteth$dev_num up promisc
            rtifconfig rteth$dev_num up promisc
            dev_num=$(($dev_num + 1))
        done
	;;
    stop)

        rmmod rtpacket

        dev_num=0

        for dev in $devices; do

            rtifconfig rteth$dev_num down

            echo 1 > /sys/bus/pci/devices/$dev/remove
            echo removing $dev to $rtdriver
            dev_num=$(($dev_num + 1))
        done
	echo rescan pci devices
        echo 1 > /sys/bus/pci/rescan
        
	;;
    *)

        cat << EOF
Usage:
    start stop
EOF
	;;
esac









