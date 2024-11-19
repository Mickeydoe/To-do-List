# Frontend Dockerfile
FROM node:18 AS build

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of the frontend code
COPY . .

# Build the application
RUN npm run build

# Use Nginx to serve the frontend
FROM nginx:alpine
COPY --from=build /app/dist /usr/share/nginx/html

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
