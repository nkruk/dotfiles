export PATH=$HOME/bin:/usr/local/bin:$HOME/rubyonmac:$PATH
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="amuse"
plugins=(git)
source $ZSH/oh-my-zsh.sh
eval "$(nodenv init -)"
source "$(brew --prefix)/opt/chruby/share/chruby/chruby.sh"
source "$(brew --prefix)/opt/chruby/share/chruby/auto.sh"
chruby ruby-3.3.4
nodenv global 20.12.2
alias python=/usr/bin/python3
alias config='/opt/homebrew/bin/git --git-dir=/Users/nkruk/.dotfiles --work-tree=/Users/nkruk'
cd ~/code
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

