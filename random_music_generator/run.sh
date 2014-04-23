#! /bin/bash
docker run -d -p 127.0.0.1:8003:80 --name="random_music_generator" fvieira/random_music_generator /usr/bin/supervisord
