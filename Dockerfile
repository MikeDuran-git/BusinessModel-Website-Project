FROM nginx:latest
#we move the index and css file into the container, no nothing more.
COPY index.html /usr/share/nginx/html/
COPY css/index.css /usr/share/nginx/html/css/
