#!/bin/bash

chmod u+x ./spam.py
chmod u+x ./restart.sh
chmod u+x ./final.py

docker-compose up -t 300--scale web=6 -d &
python3 spam.py &

bash ./restart.sh &
sleep 30
for ((i=1; i < 30; i++))
do
    docker-compose logs --no-color >& docker_logs.txt && grep -P "OK" docker_logs.txt > webs_ok.txt &
    python3 final.py &
    sleep 10
done



