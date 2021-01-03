```
docker build -t node-backend .
docker run -p8000:8000 -v $(pwd)/logs.txt:/app/logs.txt node-backend

```
