FROM node:14

# Install Python 3.10
RUN apt-get update && apt-get install -y python3.10

# Set the working directory
WORKDIR /app

# Copy your application code to the container
COPY . .

# Install dependencies
RUN npm install

# Start your application
CMD [ "npm", "start" ]