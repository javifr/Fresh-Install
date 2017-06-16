function install_xcode() {
  xcode-select --install
}

function install_homebrew() {
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

function install_brews() {
  brew tap caskroom/homebrew-cask

  brews=( brew-cask )

  for item in "${brews[@]}"
  do
    brew install $item
  done
}

function install_software() {
  casks=( dropbox appcleaner vlc cleanmymac 1password \
          google-chrome firefox google-hangouts \
          sublime-text iterm2 pg-commander psequel mamp \
          arduino fritzing \
          spotify keka filezilla calibre skype sitesucker sysex-librarian wine-stable splice bit-torrent )

  for item in "${casks[@]}"
  do
    brew cask install $item
  done
}

function install_app_store_software() {
   mas signin jfernandezriverola@gmail.com
   mas install 422304217 # Day One Classic
   mas install 409789998 # Twitter
   mas install 439623248 # iAWritter
   mas install 409737246 # Double Pane
}

function install_dotfiles() {
  git clone git@github.com:javifr/dotfiles.git ~/dotfiles
  cd ~/dotfiles && mv .*~.git ..
  cd ~/ && rm -rf dotfiles
}

install_xcode && \
install_homebrew && \
install_brews && \
install_software && \
install_app_store_software && \
# install_dotfiles && \
echo "Hecho amigo! Muchas cosas listas para ti ;)"
