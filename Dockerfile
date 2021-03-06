FROM node:latest
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json /usr/src/app/
RUN npm install
RUN npm install bcrypt@3.0.3
COPY . /usr/src/app
EXPOSE 3001
CMD [ "npm", "start" ]