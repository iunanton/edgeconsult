#!/bin/bash
docker build -t edgeconsult .
docker run -d -P --restart=always --name=edgeconsult edgeconsult
docker ps -l
