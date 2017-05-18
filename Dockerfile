FROM node:7.10.0
WORKDIR "/usr/src/app"
RUN apt-get update \
  && apt-get install -y apt-transport-https curl wget
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list \
  && apt-get update \
  && apt-get install -y yarn \
  && yarn add npm@latest -g \
  && yarn add pm2 -g \
  && echo Done updating build.