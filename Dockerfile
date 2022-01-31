FROM        buildbot/buildbot-master
MAINTAINER  ligi

RUN apt update
RUN yes | apt install python-docker python-dev libffi-dev libssl-dev libxml2-dev libxslt1-dev cargo
RUN /buildbot_venv/bin/pip3 install docker paramiko # needed for docker over ssh