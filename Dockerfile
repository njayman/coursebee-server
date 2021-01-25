FROM node:14

WORKDIR /usr/src/app/coursebee/server

COPY package*.json ./
COPY tsconfig.json ./

COPY src /usr/src/app/coursebee/server/src

RUN ls -a

RUN npm install

RUN npm run build

EXPOSE 5000

CMD ["node","./dist/index.js"]
