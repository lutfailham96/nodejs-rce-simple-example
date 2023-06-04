FROM playcourt/nodejs:18-alpine
MAINTAINER Lutfa Ibtihaji Ilham <lutfailham96@gmail.com>

WORKDIR /usr/src/app

USER root

RUN apk add --no-cache bash netcat-openbsd

RUN mkdir -p /usr/src/app
RUN npm install -g pm2

COPY package.json /usr/src/app
COPY src /usr/src/app/src

COPY .env /usr/src/app
COPY confidential.txt /usr/src/app

WORKDIR /usr/src/app
RUN npm install

EXPOSE 9000

CMD ["pm2", "startup"]
CMD ["pm2", "stop", "app"]
CMD ["pm2", "start", "src/app.js", "--name", "app", "--no-daemon"]
