FROM node

ARG REACT_APP_DIR=foo
ARG NODE_SERVER_PORT=3000

EXPOSE $NODE_SERVER_PORT

ENV NODE_PORT=$NODE_SERVER_PORT

ADD . ${REACT_APP_DIR}

RUN CI=true
RUN npm install pm2@latest -g
RUN cd ${REACT_APP_DIR}/my-app && npm install
RUN cd ${REACT_APP_DIR}/Node && npm install

WORKDIR ${REACT_APP_DIR}/Node

CMD pm2 start index.js
