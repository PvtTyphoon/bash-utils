# ~/.bashrc 
# Copy and go to the directory
cpg() {
        if [ -d "$2" ];then
                cp $1 $2 && cd $2
        else
                cp $1 $2
        fi
}

# Move and go to the directory
mvg() {
        if [ -d "$2" ];then
                mv $1 $2 && cd $2
        else
                mv $1 $2
        fi
}

# Create and go to the directory 
mkdirg() {
        mkdir -p $1
        cd $1
}
