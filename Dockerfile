FROM rabbitmq:3-management

# Set the working directory
WORKDIR /etc/rabbitmq/ssl/ca_certificate.pem

# Copy the CA certificate content from the environment variable into a file
 RUN echo "$CA_CERTIFICATE" > ca_certificate.pem

#CMD echo $CA_CERTIFICATE
CMD ["sh", "-c", "ls /etc/rabbitmq"]