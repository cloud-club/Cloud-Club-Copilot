FROM nikolaik/python-nodejs:python3.10-nodejs21

# Set the working directory
WORKDIR /app

# Copy your application code to the container
COPY . .

# Install dependencies
RUN cd frontend && npm install && cd ..

# Install Python dependencies
RUN cd backend && python3 -m pip install -r requirements.txt && cd ..

# Start your application
CMD [ "source" "start-prod.sh" ]