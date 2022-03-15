# FROM nginx:1.21.6-alpine
FROM nginx:1.20.2

ADD config/conf.d /etc/nginx/conf.d
RUN ls -lrt /etc/nginx/conf.d

ADD config/include.d /etc/nginx/include.d
RUN ls -lrt /etc/nginx/include.d

ADD html /usr/share/nginx/html
COPY README.md /usr/share/nginx/html
RUN ls -lrt /usr/share/nginx/html

