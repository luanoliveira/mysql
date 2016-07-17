FROM debian:jessie
MAINTAINER Luan Oliveira <luanconecte@gmail.com>

RUN apt-get update

RUN echo "mysql-server mysql-server/root_password password strangehat" | debconf-set-selections \
  && echo "mysql-server mysql-server/root_password_again password strangehat" | debconf-set-selections \
  && apt-get -y install mysql-server

CMD /usr/bin/mysqld_safe
