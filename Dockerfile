FROM ubuntu:latest
RUN export term=xterm
RUN export shell=bash
RUN dpkg --configure -a 
RUN apt-get update && apt-get install -y vim nano 1>/dev/null
RUN dpkg --configure -a
RUN apt-get install -y git 1>/dev/null
RUN adduser reto 
RUN cd /home/reto 
RUN echo -e '#!/bin/bash\n echo "cat /etc/passwd\n" cat /etc/passwd' >> reto
RUN chmod a+x reto 
RUN chmod o-w reto
RUN chmod o-r reto
RUN su reto
