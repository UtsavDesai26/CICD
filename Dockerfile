FROM node:12

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 3000

ENTRYPOINT npm start