FROM n8nio/n8n:latest

# Switch to root user to install global npm packages
USER root

# Install the desired npm packages globally
RUN npm install -g firecrawl-mcp
RUN npm install -g airtable-mcp-server
RUN npm install  @apify/actors-mcp-server
RUN npm install  github.com/danleigh1/google-workspace-mcp-server

# Revert to the node user for security purposes
USER node
