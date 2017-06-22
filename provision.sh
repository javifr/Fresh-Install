function install_homebrew() {
  # Check to see if Homebrew is installed, and install it if it is not
  command -v brew >/dev/null 2>&1 || { echo >&2 "Installing Homebrew Now"; \
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; }
}

function install_brews() {
  
  brew tap caskroom/cask
  
  brews=( mas )

  for item in "${brews[@]}"
  do
    brew install $item
  done
}

function install_software() {
  casks=( dropbox appcleaner vlc cleanmymac 1password \
          google-chrome firefox google-hangouts \
          sublime-text iterm2 psequel mamp \
          java arduino fritzing \
          spotify keka filezilla calibre skype sitesucker sysex-librarian wine-stable splice )

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

install_homebrew && \
install_brews && \
install_software && \
install_app_store_software && \
echo "Hecho amigo! Muchas cosas listas para ti ;)"
