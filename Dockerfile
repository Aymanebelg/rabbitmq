FROM rabbitmq:3-management

# Set the working directory
WORKDIR /etc/rabbitmq/certs

ARG CA_CERTIFICATE=$CA_CERTIFICATE
ARG SERVER_CERTIFICATE=$SERVER_CERTIFICATE
ARG SERVER_PRIVATE_KEY=$SERVER_PRIVATE_KEY

# Copy the CA certificate content from the environment variable into a file
RUN echo $CA_CERTIFICATE > /etc/rabbitmq/certs/ca_certificate.pem


#CMD echo $CA_CERTIFICATE
CMD ["sh", "-c", "cat /etc/rabbitmq/certs/ca_certificate.pem"]