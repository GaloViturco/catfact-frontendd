# Imagen base ligera con Nginx
FROM nginx:alpine

# Elimina la página por defecto de Nginx
RUN rm -rf /usr/share/nginx/html/*

# Copia los archivos del frontend al directorio de Nginx
COPY . /usr/share/nginx/html

# Expone el puerto estándar de Nginx
EXPOSE 80

# Comando por defecto para ejecutar Nginx en segundo plano
CMD ["nginx", "-g", "daemon off;"]
