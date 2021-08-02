FROM node:14-alpine3.12
COPY ["package.json", "package-lock.json", "/app/"]
WORKDIR /app
RUN npm install
COPY [".","/app"]
CMD ["npm", "start"]