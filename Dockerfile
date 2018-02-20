FROM ruby:2.4.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /ex-jenkins-rails-build
WORKDIR /ex-jenkins-rails-build
COPY Gemfile /ex-jenkins-rails-build/Gemfile
COPY Gemfile.lock /ex-jenkins-rails-build/Gemfile.lock
RUN bundle install
COPY . /ex-jenkins-rails-build
