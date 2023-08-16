# Node.js tabanlı resmi Docker görüntüsünü kullanalım
FROM node:14

# Uygulamanın çalışacağı bir çalışma dizini oluşturalım
WORKDIR /usr/src/app

# Bağımlılıkları kopyalayalım ve yükleyelim
COPY package*.json ./
RUN npm install

# Sunucu dosyasını kopyalayalım
COPY server/server.js .

# 8080 portunu dinleyecek şekilde sunucuyu çalıştıralım
EXPOSE 8080
CMD [ "node", "server.js" ]
