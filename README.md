# RabbitmqClient

### Change directory to the one that contains the Dockerfile

cd Rabbitmq

### Place the .rabbitmq file in the same directory (the file should be named .rabbitmq not rabbitmq)

### Run the script rabbitmq.sh

chmod +x rabbitmq.sh
./rabbitmq.sh

### Check Rabbitmq interface management with credentials guest in username and password

http://localhost:15672/

That's it, this should start rabbitmq in port 15672 including certificates, in case you want to generate new certificates, proceed with the next steps :

### To generate certificates

**Create a folder in /etc/rabbitmq/ :**

     sudo mkdir /etc/rabbitmq/ssl
     cd /etc/rabbitmq/ssl

**Generate a CA and use it to produce two certificate/key pairs, one for the server and another for clients:**

    sudo git clone https://github.com/rabbitmq/tls-gen tls-gen

**Change directory :**

    cd tls-gen/basic

**Set a password for CA certificate:**

    sudo make PASSWORD=linkopus

**Verify the generated certificates:**

    sudo make verify

**Check informations about certificates:**

    sudo make info

**List the certificates generated:**

    ls -l ./result

**Change directory to result:**

    cd result

**Change the certificates name for easy use:**

     sudo mv client_linkopus-Precision-3541_certificate.pem client_certificate.pem
     sudo mv client_linkopus-Precision-3541_key.pem client_private_key.pem
     sudo mv server_linkopus-Precision-3541_certificate.pem server_certificate.pem
     sudo mv server_linkopus-Precision-3541_key.pem server_private_key.pem

**Change certificates permission:**

    sudo chmod o+r client_certificate.pem
    sudo chmod o+r server_certificate.pem
    sudo chmod o+r client_private_key.pem
    sudo chmod o+r server_private_key.pem

**Open the Rabbitmq configuration file :**

    sudo nano /etc/rabbitmq/rabbitmq.conf

**Copy and paste the configuration to enable ssl (CTRL+S => CTRL+X to save):**

    listeners.ssl.default = 5671
    ssl_options.cacertfile = /etc/rabbitmq/ssl/tls-gen/basic/result/ca_certificate.pem
    ssl_options.certfile= /etc/rabbitmq/ssl/tls-gen/basic/result/server_certificate.pem
    ssl_options.keyfile= /etc/rabbitmq/ssl/tls-gen/basic/result/server_private_key.pem
    ssl_options.versions.3 = tlsv1.2
    ssl_options.versions.4 = tlsv1.3
    ssl_options.password=linkopus
    auth_mechanisms.1 = PLAIN
    auth_mechanisms.2 = EXTERNAL
    ssl_options.verify  = verify_peer
    ssl_options.fail_if_no_peer_cert = true
