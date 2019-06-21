FROM openjdk:8-jre-stretch
LABEL maintainer "Jim-Lin <acgsong.tw@yahoo.com.tw>"

RUN apt-get update && apt-get install -y locales-all

# Add a jhipster user to run as non root
RUN useradd -ms /bin/bash jhipster
WORKDIR /home/jhipster
USER jhipster
