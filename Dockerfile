FROM node:18-alpine
WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build
RUN rm -rf ./npm_modules
RUN npm install --production
EXPOSE 3000
CMD ["npm", "start"]
