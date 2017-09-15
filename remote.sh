#!/bin/bash

docker save -o edgeconsult.tar edgeconsult
gzip -c edgeconsult.tar > edgeconsult.tar.gz
rm edgeconsult.tar
scp edgeconsult.tar.gz asus:~/
ssh asus "docker stop edgeconsult"
ssh asus "docker rm edgeconsult"
ssh asus "docker rmi edgeconsult"
ssh asus "docker load -i ~/edgeconsult.tar.gz"
ssh asus "docker run --detach --name=edgeconsult --publish=32770:80 --restart=always edgeconsult"
rm edgeconsult.tar.gz

