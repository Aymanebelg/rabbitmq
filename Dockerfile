FROM rabbitmq:3-management

# Set the working directory
WORKDIR /etc/rabbitmq/ssl

# Copy the CA certificate content from the environment variable into a file
# RUN echo $CA_CERTIFICATE > ca_certificate.pem

ENV CA_CERTIFICATE=${CA_CERTIFICATE}
# Display the content of the ca_certificate.pem file (for debugging)
# RUN cat ca_certificate.pem

RUN echo $CA_CERTIFICATE > ca_certificate.pem

# Expose RabbitMQ ports
EXPOSE 5671 15672

CMD ["cat", ca_certificate.pem]
