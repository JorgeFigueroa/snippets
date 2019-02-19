source ~/.profile

#[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


# COMPOSER
export PATH="$PATH:$HOME/.composer/vendor/bin"


# MAMP MYSQL
export PATH=/Applications/MAMP/Library/bin:$PATH


# MAMP PHP
#export MAMP_PHP=/Applications/MAMP/bin/php/php5.6.10/bin
#export MAMP_PHP=/Applications/MAMP/bin/php/php7.0.12/bin
#export MAMP_PHP=/Applications/MAMP/bin/php/php7.1.1/bin
export MAMP_PHP=/Applications/MAMP/bin/php/php7.2.1/bin
export PATH="$MAMP_PHP:$PATH"

# Maven
export M2_HOME=/usr/local/apache-maven/apache-maven-3.5.0
export PATH=$PATH:$M2_HOME/bin

# JAVA
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.7.0_79.jdk/Contents/Home/
#export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.6.0.jdk/Contents/Home/
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home/
export PATH=$JAVA_HOME/bin:$PATH


#MONGO
#export PATH=/Users/jorge/Documents/mongo/mongodb_3.6.3/bin:$PATH
export PATH=/Users/jorge/Documents/mongo/mongodb_4.0.4/bin:$PATH
