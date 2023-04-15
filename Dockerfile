# Use an official Node runtime as a parent image
FROM node:10.16-alpine

# Set the working directory to /app
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files to the working directory
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the remaining application files to the working directory
COPY . .

# Build the ReactJS application
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Start the ReactJS application
CMD ["npm", "start"]
