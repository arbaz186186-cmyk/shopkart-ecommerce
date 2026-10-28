FROM nginx:latest

COPY index.html /usr/share/nginx/html/index.html
COPY css/style.css /usr/share/nginx/html/css/style.css
COPY images /usr/share/nginx/html/images

EXPOSE 80
