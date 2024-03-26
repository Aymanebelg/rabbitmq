FROM rabbitmq:3-management

# Set the working directory
WORKDIR /etc/rabbitmq/ssl


# Echo secrets into respective files
RUN echo ${{ secrets.CA_CERTIFICATE }}




COPY rabbitmq.conf /etc/rabbitmq/rabbitmq.conf

# Expose RabbitMQ ports
EXPOSE 5671 15672

# Start RabbitMQ server
CMD ["rabbitmq-server"]

