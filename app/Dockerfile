FROM node:14

# Install Python 3.10
RUN apt-get update && apt-get install -y python3.10

# Set the working directory
WORKDIR /app

# Copy your application code to the container
COPY . .

# Install dependencies
RUN cd frontend && npm install && cd ..

# Install Python dependencies
RUN cd backend && python3 -m pip install -r requirements.txt && cd ..

# Start your application
CMD [ "source" "start.sh" ]