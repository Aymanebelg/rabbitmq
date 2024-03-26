FROM rabbitmq:3-management

# Set the working directory
WORKDIR /etc/rabbitmq/ssl

# Copy the .rabbitmq file into the Docker image
COPY .rabbitmq /etc/rabbitmq/.rabbitmq

# Source .rabbitmq file to load environment variables and create SSL certificate files
RUN . /etc/rabbitmq/.rabbitmq && \
    echo "$CA_CERTIFICATE" > ca_certificate.pem && \
    echo "$SERVER_CERTIFICATE" > server_certificate.pem && \
    echo "$SERVER_PRIVATE_KEY" > server_private_key.pem && \
    echo "$CLIENT_CERTIFICATE" > client_certificate.pem && \
    echo "$CLIENT_PRIVATE_KEY" > client_private_key.pem

COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf

# Expose RabbitMQ ports
EXPOSE 5671 15672

# Start RabbitMQ server
CMD ["rabbitmq-server"]

