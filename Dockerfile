FROM nginx:latest

COPY home.html /usr/share/nginx/html/index.html

EXPOSE 80
