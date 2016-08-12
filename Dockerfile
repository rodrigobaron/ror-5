FROM ruby:2.3.1
MAINTAINER Rodrigo Baron <baron.rodrigo0@gmail.com>

RUN apt-get update && apt-get install -y \
    build-essential

ENV app /app
RUN mkdir $app
WORKDIR $app

ENV BUNDLE_PATH /bundle

WORKDIR $app
COPY . ./