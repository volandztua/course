
FROM ubuntu:20.04
LABEL maintainer="volandztua@gmail.com"
ENV TZ=Europe/Kiev Status="test" Datex="20.08.2022"
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && \
        apt-get install -y apache2 && \
        apt-get install -y net-tools && \
        apt-get install -y git
WORKDIR /App/
RUN git init && git clone https://github.com/volandztua/course.git
RUN git config --global user.name "VS" && git config --global user.email "volandztua@gmail.com"
WORKDIR /App/course/
RUN chmod a+x command.sh
CMD ["/bin/bash", "command.sh"]

