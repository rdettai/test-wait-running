#!/bin/bash
docker run -d --name testwebserver -p 80:80 httpd:2.4;
until [ "`docker inspect -f {{.State.Running}} testwebserver`" == "true" ]; do
    sleep 0.1;
done;
