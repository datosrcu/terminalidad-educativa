FROM nginx:alpine

# Copiar archivos estáticos
COPY . /usr/share/nginx/html

# Copiar configuración optimizada para Nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
