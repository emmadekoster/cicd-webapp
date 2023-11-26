# Use an official Node.js LTS image
FROM node:14 
#thuis proberen met 20
# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock files to the container
COPY package.json yarn.lock ./

# Install application dependencies with frozen-lockfile
RUN yarn install --frozen-lockfile

# Copy the rest of the application code to the container
COPY . .

# Expose port 3000 for the application
EXPOSE 3000

# Command to start the application
CMD ["yarn", "start"]
