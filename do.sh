#!/bin/bash

docker build -t edgeconsult .
docker run --detach \
	--name=edgeconsult \
	--publish-all \
	--restart=always \
	edgeconsult > /dev/null
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' edgeconsult
docker port edgeconsult
