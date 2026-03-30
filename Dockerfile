# Build and run Shelly
FROM node:20-alpine

WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies (none for now, but ready for future)
RUN npm install --production

# Copy source code
COPY src/ ./src/

# Make the CLI executable
RUN chmod +x src/index.js

# Set the entrypoint
ENTRYPOINT ["node", "src/index.js"]

# Default command
CMD ["help"]
