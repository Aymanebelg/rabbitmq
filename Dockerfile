FROM rabbitmq:3-management

# Set the working directory
WORKDIR /etc/rabbitmq/
RUN touch ca_certificate.pem

CMD ["sh", "-c", "echo $TEST > /etc/rabbitmq/ca_certificate.pem && cat /etc/rabbitmq/ca_certificate.pem"]
