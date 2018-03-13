FROM ruby:2.3-alpine
ARG BUNDLE_GEMS__CONTRIBSYS__COM
COPY Gemfile .
RUN apk --update add git
RUN bundle config github.https true
RUN gem install bundler && \
bundle install
COPY config_pro.ru .
CMD bundle exec rackup config_pro.ru --host 0.0.0.0


