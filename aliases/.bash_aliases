# Aliases for archives
    alias mktar='tar -cvf'
    alias mkbz2='tar -cvjf'
    alias mkgz='tar -cvzf'
    alias untar='tar -xvf'
    alias unbz2='tar -xvjf'
    alias ungz='tar -xvzf'
# Aliases that make life a little easier 
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'                                                             alias vdir='vdir --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias ll='ls -lh'
    alias la='ls -lha'
    alias l='ls -CF'
    alias em='emacs -nw'
    alias dd='dd status=progress'
    alias _='sudo'
    alias _i='sudo -i'
    alias please='sudo'
    alias fucking='sudo'                                                                     alias bedit='nano ~/.bashrc'
    alias upbash='source ~/.bashrc'
    alias clr='clear'
    alias hm='cd $home'
    alias diskspace='du -S | sort -n -r |more'
    alias edit='nano'
# Hey are these my time travel trousers?
    alias da='date "+%Y-%m-%d %A %T %Z"'
# Change directory aliases
    alias home='cd ~'
    alias cd..='cd ..'
    alias ..='cd ..'
    alias ...='cd ../..'
    alias ....='cd ../../..'
    alias .....='cd ../../../..'
    alias bd='cd "$OLDPWD"'
# Remove a directory and all files
    alias rmd='/bin/rm  --recursive --force --verbose '
# Alias's for multiple directory listing commands
    alias la='ls -Alh' # show hidden files
    alias ls='ls -aFh --color=always' # add colors and file type extensions
    alias lx='ls -lXBh' # sort by extension
    alias lk='ls -lSrh' # sort by size
    alias lc='ls -lcrh' # sort by change time
    alias lu='ls -lurh' # sort by access time
    alias lr='ls -lRh' # recursive ls
    alias lt='ls -ltrh' # sort by date
    alias lm='ls -alh |more' # pipe through 'more'
    alias lw='ls -xAh' # wide listing format
    alias ll='ls -Fls' # long listing format
    alias labc='ls -lap' #alphabetical sort                                                  alias lf="ls -l | egrep -v '^d'" # files only
    alias ldir="ls -l | egrep '^d'" # directories only
# chmod commands
    alias mx='chmod a+x'
    alias 000='chmod -R 000'
    alias 644='chmod -R 644'
    alias 666='chmod -R 666'
    alias 755='chmod -R 755'
    alias 777='chmod -R 777'
    alias mexe='chmod +x' #Make Executable
# Search command line history
    alias h="history | grep "
# Search running processes
    alias p="ps aux | grep "
    alias topcpu="/bin/ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10"
# Search files in the current folder
    alias f="find . | grep "
# Count all files (recursively)
    alias countfiles="for t in files links directories; do echo \`find . -type \${t:0$
# Fixes the "Hey i have thousands of aliases but i dont remember them" problem
    alias checkcommand="type -t"
# Show current network connections to the server
    alias ipview="netstat -anpl | grep :80 | awk {'print \$5'} | cut -d\":\" -f1 | sor$
# Show open ports
    alias openports='netstat -nape --inet'
# Aliases for safe and forced reboots
    alias rebootsafe='sudo shutdown -r now'
    alias rebootforce='sudo shutdown -r -n now'
# Aliases to show disk space and space used in a folder
    alias diskspace="du -S | sort -n -r |more"                                               alias folders='du -h --max-depth=1'
    alias folderssort='find . -maxdepth 1 -type d -print0 | xargs -0 du -sk | sort -rn'      alias tree='tree -CAhF --dirsfirst'
    alias treed='tree -CAFd'
    alias mountedinfo='df -hT'
# Show all logs in /var/log
    alias logs="sudo find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -$
# SHA1
    alias sha1='openssl sha1'
#Useful system info aliases
    alias mem='sudo cat /proc/meminfo'
    alias cpu='sudo cat /proc/cpuinfo'
    alias sockinfo='sudo cat /proc/net/sockstat'
    alias tcpinfo='sudo cat /proc/net/tcp'
