FROM    fvieira/base
MAINTAINER Francisco Vieira <francisco.j.m.vieira@gmail.com>

# Grab the code
RUN cd /servers/ && git clone https://github.com/fvieira/node_game_tutorial.git

# Install dependencies
RUN cd /servers/node_game_tutorial/ && npm install grunt-typescript socket.io

# Generate the .js files from the .ts ones
RUN cd /servers/node_game_tutorial/ && grunt

# Add the nginx configuration file
ADD files/node_game_tutorial_client /etc/nginx/sites-enabled/

ADD files/node_game_tutorial_client.conf /etc/supervisor/conf.d/
ADD files/node_game_tutorial_server.conf /etc/supervisor/conf.d/

RUN sed -i 's/\[supervisord\]/[supervisord]\nnodaemon=true/' /etc/supervisor/supervisord.conf


EXPOSE  80 81
