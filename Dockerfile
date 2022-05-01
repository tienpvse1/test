FROM node:lts-alpine
WORKDIR /usr/src/app
COPY ./dist/apps/app1 .
COPY ["./dist/apps/app1/package.json", "package-lock.json*", "npm-shrinkwrap.json*", "./"]
RUN npm install --production --silent && mv node_modules ../
EXPOSE 3333
CMD ["node", "main.js"]
