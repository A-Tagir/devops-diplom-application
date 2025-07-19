FROM nginx:1.21.0
RUN rm -rf /usr/share/nginx/html/*
COPY data/ /usr/share/nginx/html/
EXPOSE 80
