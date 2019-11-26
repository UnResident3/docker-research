#!/bin/bash

docker network create -d bridge \
--subnet=172.20.0.0/16 \
--gateway=172.20.0.1 \
thesis-156

docker build -t \
thesis-155:latest \
./thesis-155/
# ถ้าในกรณีมี Dockerfile หลายไฟล์หรือไม่ได้ตั้งชื่อ Dockerfile ควรใช้วิธีนี้
# docker build \
# -t thesis-155:latest \
# --file ../thesis-155/Dockerfile .

docker run --rm -d \
--network=thesis-156 \
--ip=172.20.0.5 \
--name=db-server \
thesis-155:latest

docker run --rm -d \
--network=thesis-156 \
--ip=172.20.0.10 \
--name=db-admin \
--link postgres:db \
-p 10081:8080 \
adminer:4.7.5-standalone