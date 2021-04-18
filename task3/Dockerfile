FROM node
RUN mkdir -p /home/node/app
WORKDIR /home/node/app
COPY nodejs-demo/. .
RUN npm install
EXPOSE 3000
CMD (npm start)