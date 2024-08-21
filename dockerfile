FROM node:22.0.0
USER root
#WORKDIR /devportal-webapp
COPY package.json ./
RUN npm install
#COPY ./node_modules/devportal-webapp .
WORKDIR /node_modules/devportal-webapp
RUN rm /node_modules/devportal-webapp/config.js
RUN rm -rf ./src/
#COPY -r src/ /node_modules/devportal-webapp/src/
EXPOSE 3000
ENTRYPOINT ["npm", "start"]
