# Exercise 1.1
```
oskar@dev-cpu:~$ docker ps -a
CONTAINER ID   IMAGE     COMMAND                  CREATED          STATUS                      PORTS     NAMES
391ee6625aa7   nginx     "/docker-entrypoint.…"   41 seconds ago   Up 41 seconds               80/tcp    adoring_hypatia
612ebaa74a67   nginx     "/docker-entrypoint.…"   48 seconds ago   Exited (0) 21 seconds ago             gallant_boyd
63eff83478bd   nginx     "/docker-entrypoint.…"   51 seconds ago   Exited (0) 21 seconds ago             recursing_poincare

```

# Exercise 1.2
```
oskar@dev-cpu:~$ docker ps -a
CONTAINER ID   IMAGE     COMMAND   CREATED   STATUS    PORTS     NAMES
oskar@dev-cpu:~$ docker images
REPOSITORY   TAG       IMAGE ID   CREATED   SIZE

```

# Exercise 1.3
```
oskar@dev-cpu:~$ docker run -it devopsdockeruh/pull_exercise
Unable to find image 'devopsdockeruh/pull_exercise:latest' locally
latest: Pulling from devopsdockeruh/pull_exercise
8e402f1a9c57: Pull complete 
5e2195587d10: Pull complete 
6f595b2fc66d: Pull complete 
165f32bf4e94: Pull complete 
67c4f504c224: Pull complete 
Digest: sha256:7c0635934049afb9ca0481fb6a58b16100f990a0d62c8665b9cfb5c9ada8a99f
Status: Downloaded newer image for devopsdockeruh/pull_exercise:latest
Give me the password: basics
You found the correct password. Secret message is:
"This is the secret message"

```
# Exercise 1.4
Secret message is:
"Docker is easy"

# Exercise 1.5
```
docker run -d -it --name test ubuntu sh -c 'echo "Input website:"; read website; echo "Searching.."; sleep 1; curl http://$website;'
docker exec -it test bash
apt update
apt install curl
curl helsinki.fi

```

# Exercise 1.6
Dockerfile
```
FROM devopsdockeruh/overwrite_cmd_exercise
CMD ["-c"]

```
Commands:
```
docker build -t docker-clock .
docker run docker-clock

```

# Exercise 1.8

```
oskar@dev-cpu:~/docker$ touch logs.txt
oskar@dev-cpu:~/docker$ docker run -v "$(pwd)/logs.txt:/usr/app/logs.txt" devopsdockeruh/first_volume_exercise 
```

# Exercise 1.9

```
docker run -p 80:80 devopsdockeruh/ports_exercise
```

# Exercise 1.15
https://hub.docker.com/repository/docker/zatyri/unicafe-docker-example


# Exercise 1.16
https://docker-example1.herokuapp.com/

# Exercise 1.17
https://hub.docker.com/repository/docker/zatyri/basic-node-express
