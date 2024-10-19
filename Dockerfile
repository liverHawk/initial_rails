FROM ruby:latest

RUN apt-get update -qq
RUN apt-get install -y nodejs vim
RUN npm install --global yarn

WORKDIR /app

COPY Gemfile Gemfile.lock /app/


RUN bundle config path "vendor/bundle"
RUN gem install railties
RUN bundle install
RUN rm -rf tmp/pids/server.pid

CMD ["rails", "server", "-b", "0.0.0.0"]
