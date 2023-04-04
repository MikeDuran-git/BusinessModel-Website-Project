FROM nginx:latest

COPY index.html /usr/share/nginx/html/
COPY css/index.css /usr/share/nginx/html/css/
