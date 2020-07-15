# ~/.bashrc
whatsmyip() {
        # Dumps a list of all IP addresses for every device
        # /sbin/ifconfig |grep -B1 "inet addr" |awk '{ if ( $1 == "inet" ) { print $2 } $

        # Internal IP Lookup
        echo -n "Internal IP: " ; /sbin/ifconfig eth0 | grep "inet addr" | awk -F: '{pri$

        # External IP Lookup
        echo -n "External IP: " ; wget http://smart-ip.net/myip -O - -q
}
