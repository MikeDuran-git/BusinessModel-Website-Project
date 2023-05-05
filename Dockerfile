FROM nginx:latest
#we move the index and css file into the container, no nothing more.cd
COPY index.html /usr/share/nginx/html/
COPY form1.html /usr/share/nginx/html/
COPY css/index.css /usr/share/nginx/html/css/
COPY images/ /usr/share/nginx/html/images/
COPY scripts/ /usr/share/nginx/html/scripts/