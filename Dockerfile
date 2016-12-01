FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /nuitinfo
WORKDIR /nuitinfo
ADD Gemfile /nuitinfo/Gemfile
ADD Gemfile.lock /nuitinfo/Gemfile.lock
RUN bundle install
ADD . /nuitinfo

