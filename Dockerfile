FROM ubuntu:utopic
MAINTAINER rainer.blessing@gmail.de

RUN apt-get update && apt-get install -y viewvc subversion apache2
RUN mkdir /svn
RUN a2enmod cgid
#apache
COPY ./apache2.conf /etc/apache2/
#viewvc
COPY ./svn_repos.py /usr/lib/viewvc/lib/vclib/svn/
COPY ./viewvc.conf /etc/viewvc/
COPY ./subversion_conf.tar /tmp/
RUN tar xf /tmp/subversion_conf.tar -C /var/www && chown -R www-data /var/www/.subversion
USER root
RUN service apache2 restart
CMD service apache2 start
EXPOSE 80
#sudo docker.io run -d -p 8080:80 viewvc /usr/sbin/apache2ctl -D FOREGROUND
#sudo apt-get install docker.io
