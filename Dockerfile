FROM node:18
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
RUN cd server && npm install
COPY . .
EXPOSE 5000
CMD ["node", "server/index.js"]
