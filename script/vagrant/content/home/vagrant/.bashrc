
# add alias for Composer
alias composer="php /usr/bin/composer.phar"

# add alias for Composer's optimized autoload dump
alias composer-optimize="composer dumpautoload -o"

# add /home/vagrant/bin to paths, where FFMPEG and its tools can be found
export PATH="/home/vagrant/bin:$PATH"

# navigate to vagrant folder upon login
cd /vagrant
