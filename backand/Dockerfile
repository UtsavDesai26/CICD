# Use an official Node runtime as a parent image
FROM node:10.16-alpine

# Set the working directory to /app
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the remaining application files to the working directory
COPY . .

# Expose port 5000
EXPOSE 5000

# Start the NodeJS application
CMD ["npm", "start"]
