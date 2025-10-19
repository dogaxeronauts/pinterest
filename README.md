# Privacy Policy Static Site

Bu proje Postiz uygulaması için bir privacy policy sayfası içerir.

## 🚀 Coolify'da SSL ile Deploy Etme

### Otomatik SSL Kurulumu

Coolify otomatik olarak Let's Encrypt SSL sertifikası oluşturacaktır. Bu için:

1. **Domain ayarlayın:** Coolify'da uygulamanız için bir domain belirleyin
2. **DNS ayarları:** Domain'inizi Coolify sunucunuzun IP'sine yönlendirin
3. **SSL otomatik:** Coolify Let's Encrypt ile SSL sertifikasını otomatik oluşturur

### Deploy Adımları

1. **GitHub'a push edin:**
   ```bash
   git add .
   git commit -m "Add SSL-ready configuration"
   git push origin main
   ```

2. **Coolify'da uygulama oluşturun:**
   - New Resource → Application
   - Git Repository seçin
   - Repository'nizi bağlayın

3. **Ayarlar:**
   - Build Type: `Dockerfile`
   - Port: `80`
   - Domain: `your-domain.com`
   - SSL: Otomatik etkinleştirilir

### Özellikler

- ✅ Otomatik SSL (Let's Encrypt)
- ✅ HTTP'den HTTPS'e yönlendirme
- ✅ Güvenlik başlıkları
- ✅ Gzip sıkıştırma
- ✅ Cache optimizasyonu
- ✅ Performance optimizasyonları

### Environment Variables

`.env.example` dosyasını `.env` olarak kopyalayın ve gerekli ayarları yapın:

```bash
cp .env.example .env
```

## 📁 Dosya Yapısı

```
.
├── Dockerfile              # Container konfigürasyonu
├── docker-compose.yml      # Docker Compose ayarları
├── nginx.conf              # Nginx SSL konfigürasyonu
├── index.html              # Ana web sayfası
├── .env.example            # Environment variables örneği
└── README.md               # Bu dosya
```

## 🔒 SSL Güvenlik

- **HSTS**: HTTP Strict Transport Security etkin
- **CSP**: Content Security Policy başlıkları
- **XSS Protection**: Cross-site scripting koruması
- **Frame Options**: Clickjacking koruması

Deploy edildikten sonra siteniz `https://your-domain.com` adresinde SSL ile çalışacaktır!