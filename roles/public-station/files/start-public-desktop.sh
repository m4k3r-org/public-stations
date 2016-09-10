#!/bin/bash
systemctl stop slim
apparmor_parser -R /etc/apparmor.d/sbin.dhclient
apparmor_parser -R /etc/apparmor.d/usr.sbin.cupsd
lxc-copy -e -n public-desktop -N public-desk -m bind=/media:/media:rw -B aufs

lxc-device -n public-desk add /dev/tty8 /dev/tty8
lxc-device -n public-desk add /dev/mem /dev/mem

lxc-device -n public-desk add /dev/hidraw0 /dev/hidraw0
lxc-device -n public-desk add /dev/hidraw1 /dev/hidraw1
lxc-device -n public-desk add /dev/hidraw2 /dev/hidraw2

lxc-device -n public-desk add /dev/uinput /dev/uinput
lxc-device -n public-desk add /dev/console /dev/console

lxc-device -n public-desk add /dev/dri/card0
lxc-device -n public-desk add /dev/dri/controlD64
lxc-device -n public-desk add /dev/dri/renderD128

lxc-device -n public-desk add /dev/input/mice    /dev/input/mice
lxc-device -n public-desk add /dev/input/mouse0  /dev/input/mouse0
lxc-device -n public-desk add /dev/input/mouse1  /dev/input/mouse1
lxc-device -n public-desk add /dev/input/event0  /dev/input/event0
lxc-device -n public-desk add /dev/input/event1  /dev/input/event1
lxc-device -n public-desk add /dev/input/event2  /dev/input/event2
lxc-device -n public-desk add /dev/input/event3  /dev/input/event3
lxc-device -n public-desk add /dev/input/event4  /dev/input/event4
lxc-device -n public-desk add /dev/input/event5  /dev/input/event5
lxc-device -n public-desk add /dev/input/event6  /dev/input/event6
lxc-device -n public-desk add /dev/input/event7  /dev/input/event7
lxc-device -n public-desk add /dev/input/event8  /dev/input/event8
lxc-device -n public-desk add /dev/input/event9  /dev/input/event9
lxc-device -n public-desk add /dev/input/event10 /dev/input/event10
lxc-device -n public-desk add /dev/input/event11 /dev/input/event11