# Memory_consumption_per_process
プロセス毎のメモリ消費量を調べるシェルスクリプト

#cronの設定
```
設定されているcronを表示する
# crontab -l

# crontab -e

#memory_count
#30秒ごとにtop_ps.shを実行する。
* * * * * for i in `seq 0 30 59` ;do (sleep ${i} ; sh /root/scripts/top_ps.sh ) & done; > dev/null 2>&1
```
