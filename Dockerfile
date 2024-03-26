FROM rabbitmq:3-management

# Set the working directory
WORKDIR /etc/rabbitmq/ssl

ENV CA_CERTIFICATE=${CA_CERTIFICATE}

# Expose RabbitMQ ports
EXPOSE 5671 15672

RUN echo "CA_CERTIFICATE" > ca_certificate.pem

RUN cat ca_certificate.pem