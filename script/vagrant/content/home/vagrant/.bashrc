
# add alias for Composer
alias composer="php /usr/bin/composer.phar"

# add alias for Composer's optimized autoload dump
alias composer-optimize="composer dumpautoload -o"

# add alias for running tasks
alias run="/vagrant/script/tasks/main.py"

# add /vagrant/build to paths, where FFMPEG and its tools can be found
export PATH="/vagrant/build:$PATH"

# navigate to vagrant folder upon login
cd /vagrant
