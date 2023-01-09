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
FROM node:16-alpine 
# Set the working directory to /app inside the container
WORKDIR /app
# Installing dependencies
COPY ./Users/hubsantander/ejercicios/react/helloworld/package.json /app
RUN npm install
# Copy app files
COPY ./Users/hubsantander/ejercicios/react/helloworld .
# ==== BUILD =====
# Install dependencies (npm ci makes sure the exact versions in the lockfile gets installed)
# RUN npm ci 
# Build the app
# RUN npm run build
# ==== RUN =======
# Set the env to "production"
# ENV NODE_ENV production
# Expose the port on which the app will be running (3000 is the default that `serve` uses)
EXPOSE 3000
# Start the app
CMD [ "npm", "start"]
#CMD npm start