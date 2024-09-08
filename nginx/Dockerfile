FROM nginx:alpine
RUN mkdir -p /etc/nginx/ssl
RUN apk update \
    && apk add --no-cache openssl \
    && openssl req -x509 -nodes -days 365 -newkey rsa:2048 \
    -keyout /etc/nginx/ssl/nginx-selfsigned.key \
    -out /etc/nginx/ssl/nginx-selfsigned.crt \
    -subj "/CN=localhost"
COPY .htpasswd /etc/nginx/.htpasswd
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html
