# Use the official Node.js image as the base image
FROM node:18

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

# Expose the port
EXPOSE 3001

# Define the entry point for the container
CMD ["node", "server.js"]