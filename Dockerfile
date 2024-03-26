FROM rabbitmq:3-management
ARG TEST=${TEST}
# Set the working directory
WORKDIR /etc/rabbitmq/
RUN touch ca_certificate.pem

# Copy the CA certificate content from the environment variable into a file
RUN echo $TEST > /etc/rabbitmq/ca_certificate.pem

#CMD echo $CA_CERTIFICATE
CMD ["sh", "-c", "cat /etc/rabbitmq/ca_certificate.pem"]