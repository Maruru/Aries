FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /aries
WORKDIR /aries
ADD Gemfile /aries/Gemfile
ADD Gemfile.lock /aries/Gemfile.lock
RUN bundle install
ADD . /aries
