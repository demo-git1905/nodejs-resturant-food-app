FROM node:18
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY server/package.json server/package-lock.json ./server/
RUN cd server && npm install
COPY . .
EXPOSE 5000
CMD ["node", "server/index.js"]
