# Nginx tabanlı hafif bir web sunucusu kullan
FROM nginx:alpine

# HTML dosyasını nginx'in serve ettiği dizine kopyala
COPY index.html /usr/share/nginx/html/

# Özel nginx konfigürasyonunu kopyala
COPY nginx.conf /etc/nginx/nginx.conf

# HTTP ve HTTPS portlarını aç
EXPOSE 80 443

# Nginx'i başlat
CMD ["nginx", "-g", "daemon off;"]