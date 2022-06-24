ARG env=prod

FROM nginx:1.20.2 AS base

FROM base AS branch-version-local
COPY config/cert /etc/nginx
COPY config/conf.d/default.local.conf /etc/nginx/conf.d/default.conf
COPY config/include.d/*.local.conf /etc/nginx/include.d/
EXPOSE 80 443

FROM base AS branch-version-prod
COPY config/conf.d/default.prod.conf /etc/nginx/conf.d/default.conf
ADD config/include.d/*.prod.conf /etc/nginx/include.d/
EXPOSE 80

FROM branch-version-${env} AS final
COPY html /usr/share/nginx/html
COPY README.md /usr/share/nginx/html
