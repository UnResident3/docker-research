FROM ubuntu:16.04
LABEL maintainer="finalasus"
USER root
RUN apt-get update && apt-get install -y npm \
    build-essential \
    libssl-dev curl
# RUN apt-get install -y build-essential libssl-dev
RUN curl -sL https://raw.githubusercontent.com/creationix/nvm/v0.31.0/install.sh -o install_nvm.sh
RUN bash install_nvm.sh 
RUN bash -c "source ~/.profile" 
CMD ["nvm", "install v8.11.1"]

#COPY source dest

EXPOSE 3000