#!/bin/bash

# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# cask
brew install caskroom/cask/brew-cask

# software
brew cask install appcleaner sublime-text skitch mplayerx the-unarchiver evernote qq thunder qqinput netease-music aliwangwang sopcast
brew cask install intellij-idea-ce
brew cask install spectacle

# env
brew install git-extras
brew install wget

# java
brew install groovy
brew install gradle
brew install maven

# java 1.7 env
echo 'export JAVA_HOME=`/usr/libexec/java_home -v 1.7`' >> ~/.zshrc
echo 'export PATH=${JAVA_HOME}/bin:$PATH' >> ~/.zshrc

# ant
brew install ant

# node js
brew install node
npm install -g grunt-cli
npm install -g bower
npm install supervisor -g

# z
brew install z
echo '. `brew --prefix`/Cellar/z/1.8/etc/profile.d/z.sh' >> ~/.zshrc

# replace curl
brew install httpie

# mysql
brew install mysql
unset TMPDIR
mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)"
mysql.server start
/usr/local/opt/mysql/bin/mysqladmin -u root password '123456'


# oh-my-zsh
curl -L http://install.ohmyz.sh | sh
