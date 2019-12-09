FROM node:10

# first installed node_modules in cache and copy them to src folder
RUN mkdir /usr/src/cache
WORKDIR /usr/src/cache

COPY package.json .
RUN npm install -q

# now make a different directory for src code 
RUN mkdir /usr/src/app
WORKDIR /usr/src/app

# set path to run packages from node_modules
ENV NODE_PATH=/usr/src/app/node_modules/.bin

COPY . .
