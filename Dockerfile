FROM ruby:3.2

WORKDIR /app
COPY . .

RUN apt-get update && apt-get install -y freetds-dev \
    && gem install bundler \
    && bundle install

EXPOSE 4567
CMD ["ruby", "app.rb"]
