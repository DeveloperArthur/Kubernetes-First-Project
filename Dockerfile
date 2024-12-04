# Construção da imagem:
# docker build -t explorecalifornia.com .

# Subir o container:
# docker run --rm --name explorecalifornia.com -p 5000:80 explorecalifornia.com

FROM nginx:alpine
LABEL maintainer="Carlos Nunez <dev@carlosnunez.me>"

COPY website /website
COPY nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
