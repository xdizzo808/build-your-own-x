FROM node:18-alpine
WORKDIR /app
# Install dependencies
COPY package*.json ./
RUN npm install
# Copy the rest of the code
COPY . .
# Open the port your app uses
EXPOSE 3000
# Run the backend server
CMD ["node", "builder_backend/server.mjs"]

