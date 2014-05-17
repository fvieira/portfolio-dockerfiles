#! /bin/bash
docker run -d -p 127.0.0.1:8001:81 -p 127.0.0.1:8002:80 --name="node_game_tutorial" fvieira/node_game_tutorial /usr/bin/supervisord
