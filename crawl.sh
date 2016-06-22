#!/bin/bash
cd /home/asoul/taifex-crawler/data
a=$(date +"%Y_%m_%d")
wget https://www.taifex.com.tw/DailyDownload/DailyDownload/Daily_$a.zip
find . -name "*.zip" -size -400 -delete
cd ..
git add .
git commit -m "daily update"
git push
git fetch --depth=1
git reflog expire --expire-unreachable=now --all
git gc --aggressive --prune=all
