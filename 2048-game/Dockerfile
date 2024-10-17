FROM node:20-alpine

WORKDIR /app

COPY game.js highscore.js index.html package.json server.js style.css ./

EXPOSE 8080

CMD ["npm", "start"]