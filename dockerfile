# Utiliser une image Nginx légère
FROM nginx:alpine

# Supprimer la configuration par défaut de Nginx
RUN rm -rf /etc/nginx/conf.d/default.conf

# Copier la configuration personnalisée de Nginx
COPY nginx.conf /etc/nginx/conf.d/

# Copier les fichiers du jeu dans le dossier de Nginx
COPY src /usr/share/nginx/html

# Exposer le port 80
EXPOSE 80

# Lancer Nginx
CMD ["nginx", "-g", "daemon off;"]
