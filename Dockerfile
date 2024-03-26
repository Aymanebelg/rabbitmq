FROM rabbitmq:3-management

# Set the working directory
WORKDIR /etc/rabbitmq/ssl

# Copy the CA certificate content from the environment variable into a file
COPY $CA_CERTIFICATE /etc/rabbitmq/ssl/ca_certificate.pem

# Display the content of the ca_certificate.pem file (for debugging)
RUN cat ca_certificate.pem

# Expose RabbitMQ ports
EXPOSE 5671 15672
