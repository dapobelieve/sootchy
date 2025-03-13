FROM node:23-bookworm

WORKDIR /www/app

COPY package*.json ./

RUN npm install

COPY . .

RUN chmod +x  ./scripts/start.sh

RUN ls -la

EXPOSE 80

ENTRYPOINT ["./scripts/start.sh"]
