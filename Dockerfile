FROM node:16

WORKDIR /app

COPY package.json ./
COPY server.js ./

RUN ls -la

RUN npm install

EXPOSE 3000

CMD ["node", "server.js"]