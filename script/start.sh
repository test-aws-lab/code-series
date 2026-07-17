#!/bin/bash
# 権限を付与してバックグラウンドで起動
chmod +x /opt/my-app/my-app
nohup /opt/my-app/my-app > /var/log/my-app.log 2>&1 &