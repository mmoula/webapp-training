FROM ubuntu
LABEL maintainer="marwamoula@gmail.com"
RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git 
#ADD static-website-example/ /var/www/html
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

