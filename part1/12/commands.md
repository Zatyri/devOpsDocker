```
docker build -t node-backend .
docker run -d -p8000:8000 -v $(pwd)/logs.txt:/app/logs.txt node-backend
docker build -t node-frontend .
docker run -d -p5000:5000 node-frontend
```
