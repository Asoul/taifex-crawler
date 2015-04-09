#!/bin/bash
cd /root/taifex-crawler/data
a=$(date +"%Y_%m_%d")
wget https://www.taifex.com.tw/DailyDownload/Daily_$a.zip