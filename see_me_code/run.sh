#! /bin/bash
docker run -d -p 127.0.0.1:8004:3000 --name="see_me_code" fvieira/see_me_code /usr/bin/supervisord
