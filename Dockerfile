# Use an existing base image
FROM node:latest

# Set the working directory inside the container
WORKDIR /app

# Install json-server
RUN npm install -g json-server

# Copy escapaDeDAW.json to the working directory
COPY escapaDeDAW.json .

# Expose the port json-server runs on
EXPOSE 3000

# Command to start json-server
CMD ["npx", "json-server", "--watch", "escapaDeDAW.json", "--port", "3000", "--host", "0.0.0.0"]
