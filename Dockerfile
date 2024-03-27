FROM rabbitmq:3-management

# Set the working directory
WORKDIR /etc/rabbitmq/ssl/
RUN touch ca_certificate.pem

ARG TEST=$TEST

# Copy the CA certificate content from the environment variable into a file
RUN echo $TEST > /etc/rabbitmq/ssl/ca_certificate.pem

#CMD echo $CA_CERTIFICATE
#CMD ["sh", "-c", "cat /etc/rabbitmq/ca_certificate.pem"]
