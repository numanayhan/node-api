FROM node:12
#Proje nodejs 12 ile çalışması için 
WORKDIR /home/node/app
#proje yolu belirlenir
COPY nodejs-api /home/node/app
# Docker içine kopyalanır
RUN npm install  
# Docker imajı proje halindeyken çalıştırır
CMD npm run start 
#  Container çalıştırılırken CMD çalışır.
EXPOSE 3000
#Image iinden projenin çalışacağı port tanımlanır.
#docker run ile eklenen port ile ikinci port EXPOSE ile aynı olmalıdır.


