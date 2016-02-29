FROM node:4

RUN mkdir /code
WORKDIR /code

VOLUME /code/keys

RUN npm install -g gulp

ADD ./package.json /code
RUN npm install
ADD ./ /code/
RUN gulp

EXPOSE 80
EXPOSE 443

CMD node start.js
