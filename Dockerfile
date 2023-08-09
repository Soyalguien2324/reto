FROM ubuntu:latest
RUN export term=xterm
RUN export shell=bash
RUN adduser reto 
RUN cd /home/reto 
RUN echo -e '#!/bin/bash\n echo "cat /etc/passwd\n" cat /etc/passwd' >> reto
RUN chmod a+x reto 
RUN chmod o-w reto
RUN chmod o-r reto
RUN su reto
CMD ["bash"]