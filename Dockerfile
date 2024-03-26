FROM rabbitmq:3-management

# Set the working directory
WORKDIR /etc/rabbitmq/ssl
RUN touch ca_certificate.pem

# Copy the CA certificate content from the environment variable into a file
 RUN echo "$TEST" > ca_certificate.pem

#CMD echo $CA_CERTIFICATE
CMD ["sh", "-c", "cat /etc/rabbitmq/ssl/ca_certificate.pem"]