#!/bin/bash
for (( i=21; i>0; i--)); do
  sleep 1 &
  printf "Jangan di tutup, sedang proses update. Trims as@epic  $i \r"
  wait
done
"E:\ds_rsudkotabandung\kill_DS.exe" $1 &
git pull
"E:\ds_rsudkotabandung\DesktopService.exe" $1 &

start chrome https://192.168.4.25/kiosk
