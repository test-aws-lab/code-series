#!/bin/bash

# 動いている my-app プロセスがあれば終了させる
pkill -f /opt/my-app/my-app || true

# ディレクトリが存在する場合のみ削除・再作成する
if [ -d "/opt/my-app" ]; then
    rm -f /opt/my-app/my-app
else
    mkdir -p /opt/my-app
fi