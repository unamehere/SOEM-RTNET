#!/bin/bash

modprobe rtpacket
echo -n "0000:03:00.0" > /sys/bus/pci/drivers/igb/unbind
echo -n "0000:03:00.1" > /sys/bus/pci/drivers/igb/unbind
echo -n "0000:04:00.0" > /sys/bus/pci/drivers/igb/unbind
echo -n "0000:04:00.1" > /sys/bus/pci/drivers/igb/unbind
echo -n "0000:03:00.0" > /sys/bus/pci/drivers/rt_igb/bind
echo -n "0000:03:00.1" > /sys/bus/pci/drivers/rt_igb/bind
echo -n "0000:04:00.0" > /sys/bus/pci/drivers/rt_igb/bind
echo -n "0000:04:00.1" > /sys/bus/pci/drivers/rt_igb/bind

rtifconfig rteth0 up promisc
rtifconfig rteth1 up promisc
rtifconfig rteth2 up promisc
rtifconfig rteth3 up promisc



