#!/bin/bash
# sample url = https://i.hamreus.com/ps1/i/iye-19104/wzxcwzczj/%E7%AC%AC00%E8%AF%9D/01.jpg.webp
# second sample url = https://i.hamreus.com/ps1/i/iye-19104/wzxcwzczj/%E7%AC%AC00%E8%AF%9D/01.jpg.webp?e=1663645735&m=QmqCkeNz0UORI8V1HNCJrQ
if [ -z "$1" ];then
  echo -e "\e[31mPlease enter base url\e[0m"
  exit 1
fi
url=$1
current=1
while true
do
  durl=$url"0"$current".jpg.webp"
  outfile="$current.jpg.webp"
  echo $durl
  curl "$durl" \
    -H 'sec-ch-ua: "Chromium";v="104", " Not A;Brand";v="99", "Google Chrome";v="104"' \
    -H 'Referer: https://m.manhuagui.com/' \
    -H 'sec-ch-ua-mobile: ?0' \
    -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36' \
    -H 'sec-ch-ua-platform: "Linux"' \
    --output $outfile \
    --compressed
  status=$?
  echo $status
  if [ "$status" -ne "0" ];
  then
    exit
  fi
  filehash=$(md5sum $outfile | cut -d ' ' -f 1)
  if [ "$filehash" = "b71f21827dcfdb1bb366e17c4bb16349" ];then
    exit
  fi
  let "current=current+1"

done