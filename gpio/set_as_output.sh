#!/bin/bash
dir=out
val=1
echo "Seting as: $val"
echo 'GPIO1'
bank=1
pin=1
tmp=$((bank-1))
export_val=$((tmp*32+pin))
echo "export val: ${export_val}"

echo $export_val> /sys/class/gpio/export
echo $dir > /sys/class/gpio/gpio$export_val/direction
echo $val > /sys/class/gpio/gpio$export_val/value

echo 'GPIO3'
bank=1
pin=5
tmp=$((bank-1))
export_val=$((tmp*32+pin))
echo "export val: ${export_val}"

echo $export_val> /sys/class/gpio/export
echo $dir > /sys/class/gpio/gpio$export_val/direction
echo $val > /sys/class/gpio/gpio$export_val/value

echo 'GPIO7'
bank=4
pin=22
tmp=$((bank-1))
export_val=$((tmp*32+pin))
echo "export val: ${export_val}"

echo $export_val> /sys/class/gpio/export
echo $dir > /sys/class/gpio/gpio$export_val/direction
echo $val > /sys/class/gpio/gpio$export_val/value

echo 'GPIO8'
bank=3
pin=25
tmp=$((bank-1))
export_val=$((tmp*32+pin))
echo "export val: ${export_val}"

echo $export_val> /sys/class/gpio/export
echo $dir > /sys/class/gpio/gpio$export_val/direction
echo $val > /sys/class/gpio/gpio$export_val/value

echo 'GPIO9'
bank=4
pin=28
tmp=$((bank-1))
export_val=$((tmp*32+pin))
echo "export val: ${export_val}"

echo $export_val> /sys/class/gpio/export
echo $dir > /sys/class/gpio/gpio$export_val/direction
echo $val > /sys/class/gpio/gpio$export_val/value

echo 'GPIO10'
bank=1
pin=9
tmp=$((bank-1))
export_val=$((tmp*32+pin))
echo "export val: ${export_val}"

echo $export_val> /sys/class/gpio/export
echo $dir > /sys/class/gpio/gpio$export_val/direction
echo $val > /sys/class/gpio/gpio$export_val/value

echo 'GPIO11'
bank=1
pin=7
tmp=$((bank-1))
export_val=$((tmp*32+pin))
echo "export val: ${export_val}"

echo $export_val> /sys/class/gpio/export
echo $dir > /sys/class/gpio/gpio$export_val/direction
echo $val > /sys/class/gpio/gpio$export_val/value
