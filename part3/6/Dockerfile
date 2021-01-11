FROM node:alpine as build
WORKDIR /app
COPY . .
RUN npm install && \
    npm run build

FROM node:alpine

WORKDIR /app

COPY --from=build /app/dist /app/dist


RUN npm install -g serve && \
    adduser -S app && \
    chown -R app /app

USER app

EXPOSE 5000
CMD ["serve","-s","-l","5000","dist"]
