FROM node:argon
MAINTAINER alexperto@gmail.com
# set default workdir

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
# Add package.json to allow for caching
COPY package.json /usr/src/app
# Install app dependencies
RUN npm install

COPY . /usr/src/app
COPY test /usr/src/app/test
COPY script /usr/src/app/script

# Expose the application port and run application
EXPOSE 5000
CMD [ "npm", "start" ]
