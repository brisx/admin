# Use official Node image
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Install dependencies
COPY package*.json ./
RUN npm install

# Copy source code
COPY . .

# Build app
RUN npm run build

# Expose the port Railway will use
EXPOSE 3002

# Start the app
CMD ["npm", "run"]
