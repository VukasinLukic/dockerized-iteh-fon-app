from node:20-alpine
WORKDIR /app
copy package*.json ./
RUN npm ci 
copy . . 
RUN npm run build
EXPOSE 3000
CMD ["npm","start"]