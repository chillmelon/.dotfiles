
# Essentials
export LANG=en_US.UTF-8
export ZSH="$HOME/.zsh"
export SYSTEM_VERSION_COMPAT=0

# open frameworks
export OF_ROOT="$HOME/code/of_v0.11.2_osx_release"

# Ruby
eval "$(rbenv init - zsh)"
# Aliases
alias vim="nvim"
alias cat="bat"
alias g++="g++ -std=c++11"
alias python="python3"
alias loaf="/Applications/loaf.app/Contents/MacOS/loaf"

# Antigen
source $HOME/.antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen theme romkatv/powerlevel10k
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.dotfiles/zsh/.p10k.zsh.
[[ ! -f ~/.dotfiles/zsh/.p10k.zsh ]] || source ~/.dotfiles/zsh/.p10k.zsh

export PATH="$HOME/Library/Python/3.12/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/Users/chill/.local/bin:$PATH"
export PATH="/usr/local/opt/php@8.1/bin:$PATH"
export PATH="/usr/local/opt/php@8.1/sbin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/chill/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/chill/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/chill/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/chill/google-cloud-sdk/completion.zsh.inc'; fi
source ${HOME}/.ghcup/env


# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/chill/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP binary.
export PATH="/Users/chill/Library/Application Support/Herd/bin/":$PATH


# Herd injected PHP 8.2 configuration.
export HERD_PHP_82_INI_SCAN_DIR="/Users/chill/Library/Application Support/Herd/config/php/82/"
