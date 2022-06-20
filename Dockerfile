#Base Image node:12.18.4-alpine
FROM node:12.18.4-alpine
RUN apk update && apk upgrade &&
apk add --no-cache bash git openssh

RUN mkdir -p /app

#Set working directory to /app
WORKDIR /app


#Set PATH /app/node_modules/.bin
ENV PATH /app/node_modules/.bin:$PATH


#Copy package.json in the image
COPY package.json ./


#Run npm install command
RUN npm install
RUN npm install pm2 -g


#Copy the app
COPY . ./

EXPOSE 3000

#Start the app
CMD ["node", "./src/server.js"]
