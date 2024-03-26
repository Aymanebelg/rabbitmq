FROM node:14


# Expose RabbitMQ ports
EXPOSE 5671 15672

# Start RabbitMQ server
CMD ["node","index.js"]
