FROM node:20

COPY . .
 


CMD ["echo","$test"]
