# Use the official RabbitMQ image with management plugin
FROM rabbitmq:3-management

# Copy custom RabbitMQ configuration file
COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf

# Copy SSL certificates
COPY ssl /etc/rabbitmq/ssl

# Environment variable for CA certificate
ENV CA_CERTIFICATE=${CA_CERTIFICATE}

# Command to echo CA certificate (for testing purposes)
CMD ["echo", "$CA_CERTIFICATE"]
