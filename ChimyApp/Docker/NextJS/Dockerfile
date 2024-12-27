FROM node:20-alpine
ENV NODE_ENV=development
#本番環境用ではNODE_ENV=productionに変更する
#変更することによってdevDependenciesがインストールされずにコンテナが軽量化される

WORKDIR /usr/src/app

COPY frontend/package-lock.json frontend/package.json ./

RUN npm install
#本番環境時　RUN npm install --only=production

COPY . .

#本番環境時　RUN npm run build

CMD ["npm", "run", "dev"]
#本番環境時　CMD ["npm", "start"]
