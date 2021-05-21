#!/bin/bash
#Author: Ghansham Mahajan
#Purpose: To collect System Health Information
#Date:2020-06-15
#RHEL 7.x/RHEL 6.x / Ubuntu 16.04/18.04/20.04


echo "########################-----OS------------########################"
cat /etc/redhat-release
cat /etc/os-release
echo "########################-----uname-------------########################"
echo "uname -a"
uname -a
echo "########################-----date-------------########################"
echo "date"
date
echo "########################-----df -h-------------########################"
echo "df -h"
df -h
echo "########################------free -g------------########################"
echo "free -m"
free -m
echo "########################-------netstat-----------########################"
netstat -nr
echo "########################-------route-----------########################"
route -Cn
echo "########################------------------########################"
route -Cen
echo "########################------ps auxf------------########################"
ps auxf
echo "########################------JAVA------------########################"
ps -ef| grep -i java
echo "########################-------PMON-----------########################"
ps -ef| grep -i pmon
echo "########################--------SMON----------########################"
ps -ef| grep -i smon
echo "########################------SQL------------########################"
ps -ef| grep -i sql
echo "########################-------HTTP-----------########################"
ps -ef| grep -i http
echo "########################------Apache------------########################"
ps -ef| grep -i apache
echo "########################------OMSagent------------########################"
ps auxf | grep -i oms
echo "########################------WAagent------------########################"
ps auxf | grep -i waagent
echo "########################------which java------------########################"
which java
echo "########################-------java-----------########################"
ls -lrth /usr/bin/java
echo "########################-------passwd-----------########################"
cat /etc/passwd
echo "########################-------group-----------########################"
cat /etc/group
echo "########################--------resolve----------########################"
cat /etc/resolv.conf
echo "########################-------uptime-----------########################"
uptime
echo "########################------dmidecode------------########################"
dmidecode
echo "########################------pvs------------########################"
pvs
echo "########################---------------########################"
pvdisplay
echo "########################-----vgs-------------########################"
vgs
echo "########################------------------########################"
vgdisplay
echo "########################--------lvs----------########################"
lvs
echo "########################------------------########################"
lvdisplay
echo "########################----hosts--------------########################"
cat /etc/hosts
echo "########################----networks--------------########################"
cat /etc/sysconfig/network
echo "########################----ifconfig--------------########################"
cat /etc/sysconfig/network-scripts/*
echo "########################-----Ifconfig All-------------########################"
ifconfig -a
echo "########################------Ifconfig------------########################"
ifconfig
echo "########################------service status------------########################"
systemctl list-dependencies
echo "########################----runlevel--------------########################"
runlevel
echo "########################----dmesg--------------########################"
dmesg
echo "########################------messages------------########################"
cat /var/log/messages
echo "########################------hostname------------########################"
hostname
echo "########################----hostname -i--------------########################"
hostname -i
echo "########################-------ip config-----------########################"
cat /etc/sysconfig/network-scripts/ifcfg-*
echo "########################------------------########################"
more /etc/sysconfig/network-scripts/ifcfg-*
echo "########################-----fstab-------------########################"
cat /etc/fstab
echo "########################----------mtab--------########################"
cat /etc/mtab
echo "########################-------inittab-----------########################"
cat /etc/inittab
echo "########################----grub--------------########################"
cat /etc/grub2.cfg
echo "########################-----meminfo-------------########################"
cat /proc/meminfo
echo "########################-----cpuinfo-------------########################"
cat /proc/cpuinfo
echo "########################-----eth0-------------########################"
ethtool eth0
echo "########################-----eth1-------------########################"
ethtool eth1
echo "########################------------------########################"
ethtool eth2
echo "########################------------------########################"
more ethtool eth3
echo "########################------------------########################"
ethtool eth4
echo "########################-------NTP-----------########################"
systemctl status ntp.service
echo "########################-----Audit-------------########################"
systemctl status auditd.service
