# ~/.bashrc
mysqlconfig() {
        if [ -f /etc/my.cnf ]; then
                sedit /etc/my.cnf
        elif [ -f /etc/mysql/my.cnf ]; then
                sedit /etc/mysql/my.cnf
        elif [ -f /usr/local/etc/my.cnf ]; then
                sedit /usr/local/etc/my.cnf
        elif [ -f /usr/bin/mysql/my.cnf ]; then
                sedit /usr/bin/mysql/my.cnf
        elif [ -f ~/my.cnf ]; then
                sedit ~/my.cnf
        elif [ -f ~/.my.cnf ]; then
                sedit ~/.my.cnf
        else
                echo "Error: my.cnf file could not be found."
                echo "Searching for possible locations:"
                sudo updatedb && locate my.cnf
        fi
}
