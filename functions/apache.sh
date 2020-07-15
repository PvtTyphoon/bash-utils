# ~/.bashrc
# View Apache logs
apachelog() {
        if [ -f /etc/httpd/conf/httpd.conf ]; then
                cd /var/log/httpd && ls -xAh && multitail --no-repeat -c -s 2 /var/log/h$
        else
                cd /var/log/apache2 && ls -xAh && multitail --no-repeat -c -s 2 /var/log$
        fi
}

# Edit the Apache configuration
apacheconfig() {
        if [ -f /etc/httpd/conf/httpd.conf ]; then
                sedit /etc/httpd/conf/httpd.conf
        elif [ -f /etc/apache2/apache2.conf ]; then
                sedit /etc/apache2/apache2.conf
        else
                echo "Error: Apache config file could not be found."
                echo "Searching for possible locations:"
                sudo updatedb && locate httpd.conf && locate apache2.conf
        fi
}
