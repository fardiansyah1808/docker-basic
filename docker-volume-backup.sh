docker container stop mongo-container

docker container create --name nginx-backup --mount "type=bind,source=E:\Dev\docker\backup,destination=/backup" --mount "type=volume,source=mongo-volume,destination=/data" nginx:latest

docker container start nginx-backup

docker container exec -i -t nginx-backup bin/bash

tar -cvf /backup/mongo-backup.tar.gz /data

docker container stop nginx-backup

docker container rm nginx-backup




####### one line command #######

# hentikan semua container / container yang sedang menggunakan volume
docker stop $(docker ps -q)
docker stop mongo-container

docker container run --rm --name ubuntu-backup --mount "type=bind,source=E:\Dev\docker\backup,destination=/backup" --mount "type=volume,source=mongo-volume,destination=/data" ubuntu:latest tar cvf /backup/mongo-backup-1.tar.gz /data