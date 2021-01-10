FROM node:alpine
WORKDIR /app
COPY . .

RUN adduser -S app && \
    chown -R app /app

USER app
RUN npm install

EXPOSE 5000
CMD ["npm", "start"]
