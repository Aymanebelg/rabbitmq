FROM rabbitmq:3-management

# Set the working directory
WORKDIR /etc/rabbitmq/ssl

# Debugging: Print the value of the test environment variable
# RUN echo "Value of test: $test"

# Copy the CA certificate content from the environment variable into a file
# RUN echo "$test" > ca_certificate.pem

# Display the content of the ca_certificate.pem file
# RUN cat ca_certificate.pem

# Expose RabbitMQ ports
EXPOSE 5671 15672
