FROM node:23-bookworm

WORKDIR /www/app

COPY package*.json ./

RUN npm install

COPY . .

RUN chmod +x -R ./scripts/start.sh

EXPOSE 80

ENTRYPOINT ["./scripts/start.sh", "$NODE_ENV"]
