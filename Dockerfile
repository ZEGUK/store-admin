FROM node:19
ENV PORT 8081
EXPOSE 8081

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
COPY package.json .
RUN npm install
COPY . .

CMD ["npm", "start"]
