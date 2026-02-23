FROM node:25-alpine3.22

WORKDIR /app

RUN corepack enable

COPY package.*json pnpm-lock.json ./

 RUN pnpm install --frozen-lockfile

 COPY . . 

 EXPOSE 8000

 CMD [ "pnpm","start" ]
