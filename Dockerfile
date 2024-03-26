FROM rabbitmq:3-management

# Set the working directory
WORKDIR /etc/rabbitmq/
RUN touch ca_certificate.pem
ENV  TEST=${TEST}
# Copy the CA certificate content from the environment variable into a file
RUN echo $TEST > ca_certificate.pem

#CMD echo $CA_CERTIFICATE
CMD ["sh", "-c", "echo $TEST"]