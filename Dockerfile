FROM ruby:3.1.0
WORKDIR /app
COPY . .
RUN gem install rackup bundler sinatra
RUN bundle install
EXPOSE 4567
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "--port", "4567"]