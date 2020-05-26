# Memory_consumption_per_process
プロセス毎のメモリ消費量を調べるシェルスクリプト

#cronの設定
```
設定されているcronを表示する
# crontab -l

# crontab -e

# memory_usage
# 月～金曜日に実行
* * * * 1-5 sh /root/script/top_ps.sh >/dev/null 2>&1

# memory_usage LogRotation
# 毎日23:59に実行
59 23 * * * find /var/log/top_ps/*top_ps.log -maxdepth 1 -mtime +7 | xargs rm -rf >/dev/null 2>&1
```
