# Verwende das offizielle Nginx Image als Basis
FROM nginx:latest

# Kopiere die HTML-Dateien in das Standardverzeichnis von Nginx
COPY html /usr/share/nginx/html

# Kopiere die Nginx Konfigurationsdatei
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Exponiere Port 80 für den Zugriff
EXPOSE 80

# Starte den Nginx-Server
CMD ["nginx", "-g", "daemon off;"]
