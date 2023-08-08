FROM ubuntu
RUN apt-get update && apt-get install -y vim nano 1>/dev/null
RUN apt-get install -y git 1>/dev/null
RUN adduser reto 
RUN cd /home/reto 
RUN echo -e '#!/bin/bash\n' >> reto && echo -e 'echo "cat /etc/passwd"\n' >> reto && echo 'cat /etc/passwd' >> reto
RUN chmod a+x reto 
RUN chmod o-w reto
RUN chmod o-r reto
RUN su reto