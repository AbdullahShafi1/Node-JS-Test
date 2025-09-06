FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json + package-lock.json (if exists)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files
COPY . .

# Expose port 3000
EXPOSE 3000

# Start app
CMD ["npm", "start"]
