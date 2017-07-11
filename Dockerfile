FROM ruby:2.3-alpine
COPY Gemfile .
RUN gem install bundler && \
bundle install
COPY config.ru .
CMD bundle exec rackup config.ru --host 0.0.0.0


