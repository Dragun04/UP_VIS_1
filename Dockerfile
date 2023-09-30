FROM node:19.9.0 as build-stage
#FROM ubuntu:22.04

WORKDIR /app

COPY package*.json ./
RUN npm install
COPY . .

#ENTRYPOINT ["sh", "docker-entrypoint.sh"]
ENV NODE_OPTIONS="--openssl-legacy-provider"
EXPOSE 3000
CMD [ "npm", "run", "start" ]