#! /bin/bash
docker run -d -p 127.0.0.1:8002:80 --name="node_game_tutorial_server" fvieira/node_game_tutorial node /servers/node_game_tutorial/server/game.js
