FROM ubuntu
RUN apt update
RUN apt install -y mysql-server
RUN service mysql start
ADD datacreation.sh /
ENTRYPOINT ["/bin/bash", "/datacreation.sh"]
