FROM nginx:alpine

RUN apk add --update nodejs nodejs-npm \
    && npm install -g @angular/cli

WORKDIR /app

COPY proh2r ./proh2r
COPY proh2radmin ./proh2radmin

RUN rm -rf /usr/share/nginx/html/*

RUN cd proh2r \
    && npm ci \
    && npm run build:docker \
    && cd ..

RUN cd proh2radmin \
    && npm ci \
    && npm run build:docker \
    && cd ..

EXPOSE 80