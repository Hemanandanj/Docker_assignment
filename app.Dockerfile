# Use a Node.js base image
FROM node:14

# Set the working directory in the container
WORKDIR /app

# Install dependencies
RUN npm install

# Copy the application code to the container
COPY nodejs.js /app

# Expose the port that the application will run on
EXPOSE 3000

# Start the application
CMD ["node", "nodejs.js"]

