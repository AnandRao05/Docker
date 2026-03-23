FROM node:24-bookworm-slim

WORKDIR /app

# Copy only package files first
COPY package*.json ./

# Install all dependencies (including jest)
RUN npm install

# Copy application source code
COPY . .

EXPOSE 3000
CMD ["npm","start"]
