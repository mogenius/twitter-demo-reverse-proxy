FROM nginx:3.15.0-alpine

ADD config /etc/nginx/conf.d

EXPOSE 80

CMD nginx -g 'daemon off;'