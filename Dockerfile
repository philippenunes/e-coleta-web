FROM node:14-alpine

WORKDIR /e-coleta-web

ENV PATH="./node_modules/.bin:$PATH"

COPY . .

RUN npm install npm@latest

RUN npm run build

CMD ["npm", "start"]
