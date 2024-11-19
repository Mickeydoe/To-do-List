# Backend Dockerfile
FROM node:18

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy backend code
COPY . .

# Set environment variables (override in Compose if needed)
ENV MONGO_URL=mongodb://db:27017/todo

# Expose port 5000 for API
EXPOSE 5000

# Start the backend server
CMD ["node", "index.js"]
