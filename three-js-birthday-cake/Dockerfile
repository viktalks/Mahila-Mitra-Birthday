# Use an official Node.js image as base
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock first to leverage caching
COPY package.json yarn.lock ./

# Install dependencies using yarn
RUN yarn install

# Copy the rest of the project files
COPY . .

# Expose the port your app runs on (default Vite/Next.js/Three.js projects use 5173 or 3000)
EXPOSE 3000

# Command to start the project
CMD ["yarn", "dev"]

