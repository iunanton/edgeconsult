#!/bin/bash
docker run --detach \
	--name=edgeconsult \
	--publish-all \
	--restart=always \
	--volume=$PWD/public_html:/usr/local/apache2/htdocs \
	httpd:latest > /dev/null
docker ps -l
