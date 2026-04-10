FROM node:18

WORKDIR /app

# Copy your HTML file
COPY . .

# Install static server globally
RUN npm install -g http-server

# Expose port
EXPOSE 3000

# Start server
CMD ["http-server", ".", "-p", "3000"]
