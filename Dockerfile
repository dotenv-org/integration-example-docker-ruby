FROM ruby:2.7.6
WORKDIR /usr/src/app
COPY Gemfile ./
RUN bundle install
COPY . .
EXPOSE 8080

# for npx command
RUN apt-get update && apt-get install curl
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash
RUN apt-get install nodejs
CMD npx --yes dotenv-vault@latest pull --dotenvMe $DOTENV_ME; ruby app.rb
