FROM node
WORKDIR /app
ENV API_URL=http://localhost:8000
COPY . .
RUN npm install
EXPOSE 5000
CMD ["npm","start"]
