FROM elixir:1.8.1

RUN mix local.hex --force \
 && mix archive.install --force  https://github.com/phoenixframework/archives/raw/master/phx_new-1.4.1.ez \
 && apt-get update \
 && curl -sL https://deb.nodesource.com/setup_8.x | bash \
 && apt-get install -y apt-utils \
 && apt-get install -y nodejs \
 && apt-get install -y build-essential \
 && apt-get install -y inotify-tools \
 && mix local.rebar --force

RUN mkdir /strto
WORKDIR /strto
ADD mix.exs .
ADD mix.lock .

RUN mix deps.get

EXPOSE 4000
