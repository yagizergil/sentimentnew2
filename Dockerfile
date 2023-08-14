# Docker imajını temel alın
FROM python:3.9

# Uygulama kodunu konteynera kopyalayın
COPY . /app
WORKDIR /app

# Gerekli bağımlılıkları yükleyin
RUN pip install --no-cache-dir --upgrade -r requirements.txt
RUN pip install fastapi uvicorn

# Uygulamayı çalıştırın
CMD ["uvicorn", "model.main:app", "--host", "0.0.0.0", "--port", "80"]
