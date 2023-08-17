# Resmi Python görüntüsünü temel alın
FROM python:3.8-slim

# Çalışma dizinini /app olarak ayarlayın
WORKDIR /app

# Gerekli bağımlılıkları kopyalayın (örnek olarak requirements.txt dosyasını kullanıyoruz)
COPY requirements.txt requirements.txt

# Bağımlılıkları yükleyin
RUN pip install -r requirements.txt

# Uygulama kodunu kopyalayın
COPY . .

# Uygulama portunu belirtin (örneğin FastAPI'de genellikle 8000)
EXPOSE 8000

# Uygulamayı çalıştırın
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
