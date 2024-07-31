# Use the official Node.js image
FROM node:18

# Create and change to the app directory
WORKDIR /usr/src/app

# Copy application dependency manifests to the container image
COPY package*.json ./

# Install dependencies
RUN npm ci

# Copy local code to the container image
COPY . .

# Build the Vue.js application
RUN npm run build

# Install a simple static file server to serve the built files
RUN npm install -g serve

# Command to run the application
CMD ["serve", "-s", "dist"]
