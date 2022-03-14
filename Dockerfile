FROM nginx:1.21.6-alpine

ADD config /etc/nginx/conf.d

RUN ls -lrt /etc/nginx/conf.d