apt-get update
apt-get install -y viewvc subversion apache2
mkdir /svn
a2enmod cgid
echo "<Directory /usr/lib/viewvc/cgi-bin>" >> /etc/apache2/apache2.conf
echo "Options +ExecCGI">> /etc/apache2/apache2.conf
echo "AddHandler cgi-script .cgi">> /etc/apache2/apache2.conf
echo "Order allow,deny">> /etc/apache2/apache2.conf
echo "Allow from all">> /etc/apache2/apache2.conf
echo "Require all granted">> /etc/apache2/apache2.conf
echo "</Directory>">> /etc/apache2/apache2.conf
echo "<Directory /usr/share/viewvc/docroot>" >> /etc/apache2/apache2.con    f
echo "Order allow,deny">> /etc/apache2/apache2.conf
echo "Allow from all">> /etc/apache2/apache2.conf
echo "Require all granted">> /etc/apache2/apache2.conf
echo "</Directory>">> /etc/apache2/apache2.conf
echo "Alias /viewvc-static /usr/share/viewvc/docroot">> /etc/apache2/apa    che2.conf
echo "ScriptAlias /viewvc /usr/lib/viewvc/cgi-bin/viewvc.cgi">> /etc/apa    che2/apache2.conf
echo '53.71.228.147 emb-versioncontrol.app.corpintra.net' >> /etc/hosts
#RUN chown www-data /svn
#USER www-data
#RUN mkdir /svn/repos
#RUN svnadmin create /svn/repos/repo1
#USER root
#RUN service apache2 restart
#EXPOSE 80
#sudo docker.io run -d -p 8080:80 viewvc /usr/sbin/apache2ctl -D FOREGROUND
#sudo apt-get install docker.io
