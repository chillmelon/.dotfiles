# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Essentials
export LANG=en_US.UTF-8
# export ZSH="$HOME/.oh-my-zsh"
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

# Plugins
#source $ZSH/oh-my-zsh.sh

# Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# Antigen
source $ZSH/antigen.zsh

antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle brew
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions
antigen theme romkatv/powerlevel10k
antigen apply

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# To customize prompt, run `p10k configure` or edit ~/.dotfiles/zsh/.p10k.zsh.
[[ ! -f ~/.dotfiles/zsh/.p10k.zsh ]] || source ~/.dotfiles/zsh/.p10k.zsh
export PATH="/opt/homebrew/opt/php@8.0/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.0/sbin:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/chill/code/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/chill/code/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/chill/code/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/chill/code/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="/opt/homebrew/opt/php@8.1/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.1/sbin:$PATH"
source ${HOME}/.ghcup/env
