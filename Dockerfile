FROM ubuntu:14.04
MAINTAINER Patrick White

RUN rm /bin/sh && ln -s /bin/bash /bin/sh

RUN apt-get update
RUN apt-get install -y build-essential
RUN apt-get install -y wget
RUN apt-get install -y git
RUN apt-get install -y ruby ruby-dev
RUN apt-get install -y curl
RUN apt-get install -y openssl
RUN apt-get install -y nginx
RUN apt-get install -y zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev

EXPOSE 80
ENV POSTGRES_USER=patrick
ENV POSTGRES_PASSWORD=albatross
RUN gem install bundler
ENV RACK_ENV=production

#docker run -it -v /home/zaphod/workspace/twentyeyes_web/:/var/www/twentyeyes_web docker.io/whitepatrick/twentyeyes_web
#rackup --daemonize
