FROM rabbitmq:3-management

# Set the working directory

# Copy the CA certificate content from the environment variable into a file
 RUN echo "$CA_CERTIFICATE" > /etc/rabbitmq/ssl/ca_certificate.pem

#CMD echo $CA_CERTIFICATE
CMD ["sh", "-c", "cat /etc/rabbitmq/ssl/ca_certificate.pem"]