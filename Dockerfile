FROM node:18

WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files to the container
COPY app.js ./

# Expose the port the app runs on
EXPOSE 9000

# Command to run the application
CMD ["node", "app.js"]