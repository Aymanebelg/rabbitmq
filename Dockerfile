FROM rabbitmq:3-management
ENV TEST=${TEST}
# Set the working directory
WORKDIR /etc/rabbitmq/
RUN touch ca_certificate.pem

# Copy the CA certificate content from the environment variable into a file
#RUN echo $A > /etc/rabbitmq/ca_certificate.pem

#CMD echo $CA_CERTIFICATE
CMD ["sh", "-c","echo $TEST > /etc/rabbitmq/ca_certificate.pem" ,"cat /etc/rabbitmq/ca_certificate.pem"]