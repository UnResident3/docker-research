FROM postgres:12.1-alpine

USER postgres

ENV POSTGRES_PASSWORD P@$$0rd

VOLUME [ "/var/lib/postgresql/data" ]

#VOLUME vol-thesis-155:/var/lib/postgresql/data
#VOLUME /vol-thesis-155:/var/lib/postgresql/data   #สามารถใช้แบบนี้ได้เช่นกัน
#ENV WORK_DIR=/home
ARG WORK_DIR=/home

EXPOSE 5432
WORKDIR ${WORK_DIR}

#ENV PATH=/home