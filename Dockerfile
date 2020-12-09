FROM ubuntu:20.04

#RUN apt-get update
RUN apt-get install curl

# ref: https://github.com/nodesource/distributions#installation-instructions-1
RUN curl -sL https://rpm.nodesource.com/setup_14.x | bash -

# 日本語対応
ENV LANG C.UTF-8

RUN mkdir /music-client
WORKDIR /music-client
# COPY Gemfile Gemfile
# COPY Gemfile.lock Gemfile.lock
# RUN bundle install
COPY . /music-client

# cp -rp /usr/local/bundle/gems vendor/bundle

# Add a script to be executed every time the container starts.
# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3333
