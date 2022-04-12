FROM node

RUN mkdir /users/src/app
WORKDIR /users/src/app

ENV PATH /users/src/app/node_modules/.bin:$PATH

COPY package*.json /users/src/app

RUN npm install

COPY . /users/src/app

EXPOSE 4000
CMD [ "npm", "start"]
