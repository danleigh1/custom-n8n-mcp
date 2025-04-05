FROM n8nio/n8n:latest

# Switch to root to install global packages and Git
USER root

# Install Git using apk (for Alpine)
RUN apk update && apk add --no-cache git

# Install TypeScript globally so that "tsc" is available
RUN npm install -g typescript

# Install the desired npm packages globally
RUN npm install -g firecrawl-mcp
RUN npm install -g airtable-mcp-server
RUN npm install -g @apify/actors-mcp-server
RUN npm install -g git+https://github.com/danleigh1/google-workspace-mcp-server.git

# Revert to the node user for security purposes
USER node
