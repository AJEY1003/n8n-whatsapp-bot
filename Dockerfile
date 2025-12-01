FROM n8nio/n8n:latest

# Set up the default directory
ENV N8N_HOME=/home/node/.n8n
ENV N8N_CONFIG_FILES=/home/node/.n8n

# Create folders and give node permission
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

# Use node user
USER node

# Start n8n
CMD ["n8n", "start"]
