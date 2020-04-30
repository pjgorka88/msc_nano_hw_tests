#!/bin/bash

dir=in

echo 'GPIO1'
bank=1
pin=1
tmp=$((bank-1))
export_val1=$((tmp*32+pin))
echo "export val: ${export_val1}"
echo $export_val1> /sys/class/gpio/export
echo $dir > /sys/class/gpio/gpio$export_val1/direction

echo 'GPIO3'
bank=1
pin=5
tmp=$((bank-1))
export_val2=$((tmp*32+pin))
echo "export val: ${export_val2}"
echo $export_val2> /sys/class/gpio/export
echo $dir > /sys/class/gpio/gpio$export_val2/direction

echo 'GPIO7'
bank=4
pin=22
tmp=$((bank-1))
export_val3=$((tmp*32+pin))
echo "export val: ${export_val3}"
echo $export_val3> /sys/class/gpio/export
echo $dir > /sys/class/gpio/gpio$export_val3/direction

echo 'GPIO8'
bank=3
pin=25
tmp=$((bank-1))
export_val4=$((tmp*32+pin))
echo "export val: ${export_val4}"
echo $export_val4> /sys/class/gpio/export
echo $dir > /sys/class/gpio/gpio$export_val4/direction

echo 'GPIO9'
bank=4
pin=28
tmp=$((bank-1))
export_val5=$((tmp*32+pin))
echo "export val: ${export_val5}"
echo $export_val5> /sys/class/gpio/export
echo $dir > /sys/class/gpio/gpio$export_val5/direction

echo 'GPIO10'
bank=1
pin=9
tmp=$((bank-1))
export_val6=$((tmp*32+pin))
echo "export val: ${export_val6}"
echo $export_val> /sys/class/gpio/export
echo $dir > /sys/class/gpio/gpio$export_val6/direction

echo 'GPIO11'
bank=1
pin=7
tmp=$((bank-1))
export_val7=$((tmp*32+pin))
echo "export val: ${export_val7}"
echo $export_val> /sys/class/gpio/export
echo $dir > /sys/class/gpio/gpio$export_val7/direction

while :
do
 echo 'READ INPUTS:'
 for EXPORT in $export_val1 $export_val2 $export_val3 $export_val4 $export_val5 $export_val6 $export_val7
 do
   cat /sys/class/gpio/gpio$EXPORT/value
 done
 echo ''
 sleep 1
done
