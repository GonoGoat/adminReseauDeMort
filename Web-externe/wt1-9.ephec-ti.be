#/etc/apache2/sites-available
<VirtualHost *:80>
    ServerAdmin admin@wt1-9.ephec-ti.be
    DocumentRoot /var/www/wt1-9.ephec-ti.be/www
    ServerName wt1-9.ephec-ti.be.com
    ServerAlias www.wt1-9.ephec-ti.be
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>

<VirtualHost *:80>
    ServerAdmin admin@wt1-9.ephec-ti.be
    DocumentRoot /var/www/wt1-9.ephec-ti.be/b2b
    ServerName b2b.wt1-9.ephec-ti.be
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
</VirtualHost>

