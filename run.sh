
# homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# cask
brew install caskroom/cask/brew-cask

# software
brew cask install appcleaner sublime-text skitch mplayerx the-unarchiver evernote qq thunder qqinput netease-music
brew cask install intellij-idea-ce

# env
brew install git-extras
brew install wget

# java
brew install groovy
brew install gradle
brew install maven


# node js
brew install node
npm install -g grunt-cli
npm install -g bower
npm install supervisor -g

# z
brew install z
echo '. `brew --prefix`/Cellar/z/1.8/etc/profile.d/z.sh' >> ~/.zshrc

# mysql
brew install mysql
unset TMPDIR
mysql_install_db --verbose --user=`whoami` --basedir="$(brew --prefix mysql)"
mysql.server start
/usr/local/opt/mysql/bin/mysqladmin -u root password '123456'
