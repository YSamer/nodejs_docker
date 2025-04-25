FROM node:22

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

RUN npm install -g nodemon

EXPOSE 4000

CMD ["npm", "run", "dev-start"]
