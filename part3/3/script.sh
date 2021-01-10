#!/bin/sh
echo "Input github url:"
read url
git clone $url 
echo "enter docker projectname:"
read name
docker build -t $name .
echo "enter docker username:"
read username
docker tag $name $username/$name
docker login
docker push $username/$name
