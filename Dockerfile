FROM node:18-alpine
WORKDIR /usr/src/app
COPY . .
RUN npm install \
	&& npm run build \
	&& rm -rf ./npm_modules \
	&& npm install --production
EXPOSE 3000
CMD ["npm", "start"]
