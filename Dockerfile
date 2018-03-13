FROM ruby:2.3-alpine
ARG BUNDLE_GEMS__CONTRIBSYS__COM
COPY Gemfile .
RUN apk --update add git
RUN bundle config github.https true
RUN gem install bundler && \
bundle install
COPY config.ru .
CMD bundle exec rackup config.ru --host 0.0.0.0


