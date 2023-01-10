#FROM node:16

#WORKDIR /app

#COPY package.json ./
#COPY server.js ./

#RUN ls -la

#RUN npm install

#EXPOSE 3000

#CMD ["node", "server.js"]



FROM node:16-alpine

RUN mkdir /app
WORKDIR /app
COPY package.json /app

RUN npm install
COPY . /app
EXPOSE 3000
CMD ["npm", "start"]

