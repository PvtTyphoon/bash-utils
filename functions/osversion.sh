# ~/.bashrc
ver() {
        local dtype
        dtype=$(distribution)

        if [ $dtype == "redhat" ]; then
                if [ -s /etc/redhat-release ]; then
                        cat /etc/redhat-release && uname -a
                else
                        cat /etc/issue && uname -a
                fi
        elif [ $dtype == "suse" ]; then
                cat /etc/SuSE-release
        elif [ $dtype == "debian" ]; then
                lsb_release -a
                # sudo cat /etc/issue && sudo cat /etc/issue.net && sudo cat /etc/lsb_re$
        elif [ $dtype == "gentoo" ]; then
                cat /etc/gentoo-release
        elif [ $dtype == "mandriva" ]; then
                cat /etc/mandriva-release
        elif [ $dtype == "slackware" ]; then
                cat /etc/slackware-version
        else
                if [ -s /etc/issue ]; then
                        cat /etc/issue
                else
                        echo "Error: Unknown distribution"
                        exit 1
                fi
        fi
}
