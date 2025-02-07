# Use official Node.js LTS image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json (and package-lock.json if you have it)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the app files
COPY index.js .

# Expose the port (for documentation purposes only)
EXPOSE 3000

# Default command to run the Node app
CMD ["npm", "start"]

