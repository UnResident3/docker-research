FROM jenkins:2.60.3

LABEL maintainer="finalasus"
USER root
RUN apt-get update && apt-get install -y android-sdk

ENV JENKINS_HOME /var/jenkins_home
ENV ANDROID_HOME /usr/lib/android-sdk
ENV PATH $ANDROID_HOME/tools:$ANDROID_HOME/tools/bin:$ANDROID_HOME/platform-tools:$PATH


RUN wget https://dl.google.com/android/repository/sdk-tools-linux-4333796.zip -O sdk-tools.zip
RUN unzip -o sdk-tools.zip -d $ANDROID_HOME
RUN rm sdk-tools.zip


RUN yes | sdkmanager "platform-tools" "platforms;android-28"


EXPOSE $8080