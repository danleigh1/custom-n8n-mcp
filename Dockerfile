FROM n8nio/n8n:latest

# Switch to root to install global packages
USER root

# Verify Node.js version
RUN node --version

# Install desired npm packages globally
RUN npm install -g firecrawl-mcp
RUN npm install -g airtable-mcp-server
RUN npm install -g @apify/actors-mcp-server

# Revert to the node user for security purposes
USER node
