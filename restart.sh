#!/bin/bash
sleep 50
docker stop fastapi_nginx_balancer_web_1 &
sleep 150
docker start fastapi_nginx_balancer_web_1


