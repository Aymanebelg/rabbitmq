FROM rabbitmq:3-management

# Set the working directory
WORKDIR /etc/rabbitmq/ssl


# Echo secrets into respective files
RUN echo "${{ secrets.CA_CERTIFICATE }}" > ca_certificate.pem && \
    echo "${{ secrets.SERVER_CERTIFICATE }}" > server_certificate.pem && \
    echo "${{ secrets.SERVER_PRIVATE_KEY }}" > server_private_key.pem && \
    echo "${{ secrets.CLIENT_CERTIFICATE }}" > client_certificate.pem && \
    echo "${{ secrets.CLIENT_PRIVATE_KEY }}" > client_private_key.pem

    

COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf

# Expose RabbitMQ ports
EXPOSE 5671 15672

# Start RabbitMQ server
CMD ["rabbitmq-server"]

