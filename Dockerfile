# Docker imajını temel alın
FROM python:3.9

# Uygulama kodunu konteynera kopyalayın
COPY . /app
WORKDIR /app

# Gerekli bağımlılıkları yükleyin
RUN pip install --no-cache-dir --upgrade -r requirements.txt
RUN pip install fastapi uvicorn

# Express uygulamasını çalıştırın
RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -
RUN apt-get install -y nodejs
COPY ./server /app/server
WORKDIR /app/server
RUN npm install
EXPOSE 80
CMD ["npm", "start"]
