FROM rabbitmq:3-management


ARG CA_CERTIFICATE
ENV CA_CERTIFICATE=$CA_CERTIFICATE

# Set the working directory
WORKDIR /etc/rabbitmq/ssl


# Echo secrets into respective files
RUN echo $CA_CERTIFICATE


COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf

# Expose RabbitMQ ports
EXPOSE 5671 15672

# Start RabbitMQ server
CMD ["rabbitmq-server"]

