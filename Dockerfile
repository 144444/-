FROM node:lts-alpine as build-stage
EXPOSE 8080
WORKDIR /var/www/
CMD ["npm", "run", "serve"]