FROM rabbitmq:3-management

# Set the working directory
WORKDIR /etc/rabbitmq/ssl

# Copy the CA certificate content from the environment variable into a file
# RUN echo $CA_CERTIFICATE > ca_certificate.pem
ENV TEST="Hello World"
#CMD echo $CA_CERTIFICATE
CMD ["sh", "-c", "echo $TEST"]