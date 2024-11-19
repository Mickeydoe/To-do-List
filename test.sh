#!/bin/bash

echo "Testing Backend API..."
curl -X GET http://localhost:5000/api/todos

echo "Checking Frontend..."
curl -I http://localhost:3000

echo "Testing MongoDB Connection from Backend..."
docker-compose exec backend curl -X GET http://db:27017
