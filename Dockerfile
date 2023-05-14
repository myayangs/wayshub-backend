FROM node:14.21.3-alpine
WORKDIR /app
COPY . .
RUN npm install
RUN npm install sequelize-cli -g
RUN npx sequelize db:create
RUN npx sequelize db:migrate
EXPOSE 5000
CMD [ "npm", "start" ]
