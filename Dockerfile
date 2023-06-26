bashCopy code
# Use the official Node.js image as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /simple_api

# Copy the application files into the working directory
COPY . /simple_api

# Install the application dependencies
RUN npm install

# Define the entry point for the container
CMD ["npm", "start"]