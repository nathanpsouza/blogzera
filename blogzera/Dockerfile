FROM ruby

RUN apt-get update -qq \
    && apt-get install -y \
        build-essential libpq-dev nodejs \
        postgresql postgresql-client

RUN mkdir /app
WORKDIR /app

COPY . /app

RUN gem install bundler
RUN bundle install

EXPOSE 3000

CMD bundle exec rails s -p 3000 -b '0.0.0.0'
