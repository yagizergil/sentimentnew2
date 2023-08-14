# Docker imajını temel alın
FROM python:3.9

# Uygulama kodunu konteynera kopyalayın
COPY . /app
WORKDIR /app

# Gerekli bağımlılıkları yükleyin
RUN pip install -r requirements.txt

# Uygulamayı çalıştırın
CMD ["uvicorn", "model.main:app", "--host", "0.0.0.0", "--port", "80"]
