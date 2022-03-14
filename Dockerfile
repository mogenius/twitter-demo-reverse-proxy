FROM nginx:1.21.6-alpine

ADD config/conf.d /etc/nginx/conf.d
RUN ls -lrt /etc/nginx/conf.d

ADD include /etc/nginx/include.d
RUN ls -lrt /etc/nginx/include.d

ADD html /usr/share/nginx/html
COPY README.md /usr/share/nginx/html
RUN ls -lrt /usr/share/nginx/html

