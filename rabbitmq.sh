docker build -t rabbitmq-image .
docker run -d --name rabbitmq-container -p 5671:5671 -p 15672:15672 rabbitmq-image
