FROM rabbitmq:3-management

# Set the working directory
WORKDIR /etc/rabbitmq/ssl

# Copy the CA certificate content from the environment variable into a file
RUN echo "CA_CERTIFICATE: $CA_CERTIFICATE" > ca_certificate.pem

# Display the content of the ca_certificate.pem file
RUN cat ca_certificate.pem

# Debugging
ENV DEBUG_CA_CERTIFICATE=$CA_CERTIFICATE
RUN echo "DEBUG_CA_CERTIFICATE=$DEBUG_CA_CERTIFICATE"

# Expose RabbitMQ ports
EXPOSE 5671 15672
