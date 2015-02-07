FROM    fvieira/base
MAINTAINER Francisco Vieira <francisco.j.m.vieira@gmail.com>

# Grab the code
RUN cd /servers/ && git clone https://github.com/fvieira/SeeMeCode.git see_me_code

# Install dependencies
RUN cd /servers/see_me_code/ && npm install 

# Generate bundle.js
RUN cd /servers/see_me_code/ && grunt

ADD files/see_me_code.conf /etc/supervisor/conf.d/

RUN sed -i 's/\[supervisord\]/[supervisord]\nnodaemon=true/' /etc/supervisor/supervisord.conf

EXPOSE 3000

