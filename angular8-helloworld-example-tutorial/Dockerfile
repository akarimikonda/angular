FROM node:12

WORKDIR /app

RUN npm install -g @angular/cli

COPY ./ ./

RUN npm install

RUN ng build

EXPOSE 4200

CMD ng serve --host 0.0.0.0 --disable-host-check
