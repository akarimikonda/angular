FROM node:12

WORKDIR /app

RUN npm install -g @angular/cli

COPY ./ ./

RUN npm install

RUN ng build

ENTRYPOINT ng serve
