FROM    fvieira/base
MAINTAINER Francisco Vieira <francisco.j.m.vieira@gmail.com>

# Grab the code
RUN mkdir /servers/random-music-generator
RUN cd /servers/random-music-generator && git clone https://github.com/fvieira/random_music_generator.git repo

# Install dependencies
RUN cd /tmp && curl -O http://download.linuxaudio.org/lilypond/binaries/linux-64/lilypond-2.18.2-1.linux-64.sh && sh lilypond-2.18.2-1.linux-64.sh --batch && rm lilypond-2.18.2-1.linux-64.sh
#RUN virtualenv /servers/random-music-generator/venv
#RUN cd /servers/random-music-generator/ && source venv/bin/activate && pip install -r repo/requirements.txt
RUN pip install -r /servers/random-music-generator/repo/requirements.txt

RUN mkdir /root/.abjad
ADD files/abjad.cfg /root/.abjad/

ADD files/run /servers/random-music-generator/
ADD files/random-music-generator.conf /etc/supervisor/conf.d/

EXPOSE  80
