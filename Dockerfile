
FROM n8nio/n8n:latest

USER root

# Create the n8n directory
RUN mkdir -p /home/node/.n8n && chown -R node:node /home/node/.n8n

USER node

CMD ["n8n", "start"]
