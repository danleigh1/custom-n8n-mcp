FROM n8nio/n8n:latest

# Switch to root to install global packages and Git
USER root

# Install Git using apk
RUN apk update && apk add --no-cache git

# Install desired npm packages globally
RUN npm install -g firecrawl-mcp
RUN npm install -g airtable-mcp-server
RUN npm install -g @apify/actors-mcp-server
RUN npm install -g git+https://github.com/danleigh1/google-workspace-mcp-server.git

# Revert to node user
USER node
