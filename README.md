# Memory_consumption_per_process
プロセス毎のメモリ消費量を調べるシェルスクリプト

#cronの設定
```
設定されているcronを表示する
# crontab -l

# crontab -e

#memory_count
#30秒ごとにtop_ps.shを実行する。
* * * * 1-5 for i in `seq 0 30 59` ;do (sleep ${i} ; sh /root/script/top_ps.sh ) & done; >/dev/null 2>&1

#memory_count LogRotation
#7日前から過去まで検索した結果を削除する
59 23 * * * find /exportf/log/top_ps/*top_ps.log -maxdepth 1 -mtime +7 | xargs rm -rf >/dev/null 2>&1
```
