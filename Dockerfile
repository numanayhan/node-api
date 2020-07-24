FROM node:12
#Proje nodejs 12 ile çalışması için 
WORKDIR /usr/src/app
#proje yolu belirlenir
COPY nodejs-api /usr/src/app
# Docker içine kopyalanır
ENV PORT 8080
ENV HOST 0.0.0.0
RUN npm install --only=production 
COPY . .
# Docker imajı proje halindeyken çalıştırır
CMD ["npm","start"]
#  Container çalıştırılırken CMD çalışır.

#Image iinden projenin çalışacağı port tanımlanır.
#docker run ile eklenen port ile ikinci port EXPOSE ile aynı olmalıdır.


