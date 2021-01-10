FROM node:alpine
WORKDIR /app
COPY . .

RUN adduser -S app && \
    chown -R app /app

# RUN apt-get update && apt-get install -y curl && \
#    curl https://deb.nodesource.com/setup_15.x | bash - && \
#    apt-get install -y nodejs && \
#    apt-get purge -y --auto-remove curl && \ 
#    rm -rf /var/lib/apt/lists/* && \
#    apt-get clean && \
#    useradd -m app && \
#    chown -R app /app


USER app
RUN npm install

EXPOSE 8000
CMD ["npm","start"]
