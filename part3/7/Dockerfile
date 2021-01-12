FROM node:alpine as build

WORKDIR /tmp

RUN apk upgrade && apk add git && \
    git clone https://github.com/Zatyri/unicafe-redux.git && \
    cd unicafe-redux && npm install && \
    npm run build

FROM node:alpine

WORKDIR /app

COPY --from=build /tmp/unicafe-redux/build /app/build

RUN npm install -g serve && \
    adduser -S app && \
    chown -R app /app

USER app

EXPOSE 3000
CMD ["serve","-s","-l","3000","build"]
