FROM ubuntu:18.04

USER root 

RUN apt-get update && apt-get install -y wget gnupg \
    && echo "deb http://apt.postgresql.org/pub/repos/apt/ bionic-pgdg main" >> /etc/apt/sources.list.d/pgdg.list \
    && wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -

ENV TZ=Asia

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime \
    && echo $TZ > /etc/timezone \
    && apt-get update \
    && apt-get -y install postgresql-9.5 postgresql-client-9.5 postgresql-contrib-9.5

USER postgres
RUN /etc/init.d/postgresql start \
    && psql -c "ALTER USER postgres WITH PASSWORD 'psql4';"

USER root
RUN echo "host all  all    0.0.0.0/0  md5" >> /etc/postgresql/9.5/main/pg_hba.conf
RUN echo "listen_addresses='*'" >> /etc/postgresql/9.5/main/postgresql.conf

EXPOSE 5432

VOLUME ["/var/lib/postgresql/data"]

USER postgres

WORKDIR /home/postgres

CMD ["/usr/lib/postgresql/9.5/bin/postgres", "-D", "/var/lib/postgresql/9.5/main", "-c", "config_file=/etc/postgresql/9.5/main/postgresql.conf"]
