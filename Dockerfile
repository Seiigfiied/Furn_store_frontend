# # Use an image that includes the necessary shell binaries
# FROM node:20.10-alpine

# # Set the working directory inside the container
# WORKDIR /app

# # Copy package.json and package-lock.json files
# COPY package*.json ./

# # Install dependencies
# RUN npm install

# # Copy the rest of the application code
# COPY . .

# # Build the Angular project
# RUN npm run build

# # Expose port 4200
# EXPOSE 4200

# # Command to run the application
# CMD ["npm", "start"]
# Use an image that includes the necessary shell binaries
# FROM node:20.10-alpine

# # Set the working directory inside the container
# WORKDIR /app

# # Copy package.json and package-lock.json files
# COPY package*.json ./

# # Install dependencies
# RUN npm install

# # Copy the rest of the application code
# COPY . .

# # Build the Angular project
# RUN npm run build

# # Install HTTP server to serve the Angular application
# RUN npm install -g http-server

# # Expose port 4200
# EXPOSE 4200

# # Command to run the application
# CMD ["http-server", "dist"]
# Use the node image
FROM docker.io/library/node:20.10-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Copy the rest of the application code
COPY . .

# Build the Angular project
RUN ng build

# Install HTTP server to serve the Angular application
RUN npm install -g http-server

# Expose port 4200
EXPOSE 4200

# Command to run the application
CMD ["http-server", "dist"]
