FROM rabbitmq:3-management

# Set the working directory
WORKDIR /etc/rabbitmq/ssl

ARG CA_CERTIFICATE=$CA_CERTIFICATE
ARG SERVER_CERTIFICATE=$SERVER_CERTIFICATE
ARG SERVER_PRIVATE_KEY=$SERVER_PRIVATE_KEY

# Copy the CA certificate content from the environment variable into a file
RUN echo "$CA_CERTIFICATE" > /etc/rabbitmq/ssl/ca_certificate.pem
RUN echo "$SERVER_CERTIFICATE" > /etc/rabbitmq/ssl/server_certificate.pem
RUN echo "$SERVER_PRIVATE_KEY" > /etc/rabbitmq/ssl/server_private_key.pem

COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf
