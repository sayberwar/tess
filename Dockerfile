FROM node:16.15-alpine
RUN mkdir /app
WORKDIR /app
COPY package.json /app
RUN npm install
COPY . /app
CMD ["npm", "run", "dev", "--host 0.0.0.0"]
EXPOSE 3000