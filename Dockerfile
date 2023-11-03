FROM node:14

RUN apt-get update && apt-get install -y nano
COPY ./simple_app /simple_app
WORKDIR /simple_app
RUN npm install
RUN npm run serve
CMD [ "bash" ]
