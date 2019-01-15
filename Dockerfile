FROM mophos/mmis-nginx

LABEL maintainer="Satit Rianpit <rianpit@gmail.com>"

WORKDIR /home/queue

RUN apk add --no-cache --virtual deps python build-base

RUN npm i npm@latest -g

RUN npm i -g pm2

RUN git clone https://github.com/mophos/queue-web \
  && git clone https://github.com/mophos/queue-api \
  && cd queue-web \
  && npm i \
  && npm run build \
  && cd .. \
  && cd queue-api \
  && npm i \
  && npm run build \
  && cd ..

COPY nginx.conf /etc/nginx

COPY process.json .

COPY webserver.js .

RUN npm i

CMD /usr/sbin/nginx && /usr/bin/pm2-runtime process.json

EXPOSE 80
