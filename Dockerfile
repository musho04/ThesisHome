# Specify the base image to use
FROM node:latest

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Specify the command to run when the container starts
CMD ["npm", "start"]