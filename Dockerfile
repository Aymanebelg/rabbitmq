FROM rabbitmq:3-management

# Set the working directory
WORKDIR /etc/rabbitmq/ssl

ENV test=${test}

# Expose RabbitMQ ports
EXPOSE 5671 15672

RUN echo ${test} > ca_certificate.pem

RUN cat ca_certificate.pem