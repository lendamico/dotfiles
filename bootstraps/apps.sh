# install homebrew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

# initialize homebrew
brew doctor

# get caskroom
brew install caskroom/cask/brew-cask

# start with key apps
brew cask install dropbox
brew cask install textmate
# brew cask install bbedit
brew cask install alfred
brew cask install bittorrent-sync
brew cask install rdio
brew cask install textexpander
brew cask install wacom-bamboo-tablet

# dev tools

brew cask install iterm2
brew cask install codekit
brew cask install cd-to
brew cask install transmit
brew cask install imagealpha
brew cask install imageoptim
brew cask install mamp
brew cask install marked
brew install wget
brew install tree
brew cask install ngrok
brew install imagemagick
brew install ruby
curl -sSL https://get.rvm.io | bash -s stable
gem install jekyll
gem install bourbon
gem install neat
gem install bitters
# wp-cli
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp


# utilities
brew cask install bartender
brew cask install caffeine
brew cask install flux
brew cask install harvest
brew cask install hazel
brew cask install backblaze-downloader
brew cask install vlc

# browsers
brew cask install google-chrome
brew cask install firefox
brew cask install opera

# etc
brew cask install transmission
brew cask install handbrake
# brew cask install cleanmymac
# brew cask install clarify

# 1325-1610-2178-4473-7614-7642

