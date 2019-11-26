FROM postgres:12.1-alpine

USER postgres

# ENV POSTGRES_PASSWORD P@$$0rd
VOLUME [ "/var/lib/postgresql/data" ]

#ENV WORK_DIR=/home
ARG WORK_DIR=/home

EXPOSE 5432
WORKDIR ${WORK_DIR}

# Trick :
# ใช้วิธี ALTER USER postgres แทนการใช้ ENV POSTGRES_PASSWORD เพราะแม่งไม่ช่วยอะไร
# ใช้ ONBUILD ประกอบ เพื่อให้ทำการ RUN psql หลังจาก BUILD แล้ว เพราะต้องเปิดให้ db ทำงานก่อน
# ถึงจะสามารถใช้ psql ยิงคำสั่ง เข้าไปได้
ONBUILD RUN psql -c "ALTER USER postgres WITH PASSWORD 'P@$$w0rd';"