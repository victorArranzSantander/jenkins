#FROM node:16

#WORKDIR /app

#COPY package.json ./
#COPY server.js ./

#RUN ls -la

#RUN npm install

#EXPOSE 3000

#CMD ["node", "server.js"]





# ==== CONFIGURE =====
# Use a Node 16 base image
#FROM node:16-alpine 
# Set the working directory to /app inside the container
#WORKDIR /app
# Installing dependencies
#COPY . /app
#RUN npm install
# Copy app files
#COPY . .
# ==== BUILD =====
# Install dependencies (npm ci makes sure the exact versions in the lockfile gets installed)
# RUN npm ci 
# Build the app
# RUN npm run build
# ==== RUN =======
# Set the env to "production"
# ENV NODE_ENV production
# Expose the port on which the app will be running (3000 is the default that `serve` uses)
#EXPOSE 3007
# Start the app
#CMD ["npm", "start"]
#CMD npm start


FROM node:16-alpine

RUN mkdir /app
WORKDIR /app
COPY package.json /app

RUN npm install
COPY . /app
EXPOSE 3009
CMD ["npm", "start"]

