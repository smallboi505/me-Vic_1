# Use Node.js image with Alpine for a smaller footprint

FROM node:alpine



# Set the working directory inside the container

WORKDIR /app



# Copy package.json and yarn.lock first to take advantage of Docker's cache

COPY package.json yarn.lock ./



# Install dependencies using Yarn

RUN yarn install



# Copy the rest of the app code to the container

COPY . .



# Expose the port from the environment variables (e.g., NODE_PORT from .env)

EXPOSE ${NODE_PORT}



# Run the server

CMD ["node", "server.js"]



