FROM ubuntu:18.04
#เนื่องจาก ubuntu 16.04 น่าจะไม่ compatible กับ nodejs เต็มตัวนัก เลยลองเปลี่ยนเป็น 18.04
LABEL maintainer="funnyFEB"

USER root

RUN apt-get update && apt-get install -y nodejs npm

EXPOSE 3000

#ตั้ง WORKDIR ไว้ให้เนื่องจากการทำ npm install ตามทำที่ folder ที่ mount ไว้
#แต่ ☝🏻 ข้างบน ตั้งเข้ามาเป็น root user เมื่อเวลา container start WORKDIR จะอยู่ที่ /
WORKDIR /home/app

# CMD npm i && npm start

ENTRYPOINT [ "npm" ]

