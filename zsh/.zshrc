# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [ ! -d "$ZINIT_HOME" ]; then
  mkdir -p "$(dirname $ZINIT_HOME)"
  git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

zinit ice depth=1; zinit light romkatv/powerlevel10k

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions

autoload -Uz +X compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' menu select

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Essentials
export LANG=en_US.UTF-8
export ZSH="$HOME/.zsh"
export SYSTEM_VERSION_COMPAT=0

# Init Tools
eval "$(rbenv init - zsh)"
eval "$(zoxide init zsh --cmd=cd)"

# Aliases
alias vim="nvim"
alias cat="bat"
alias g++="g++ -std=c++11"
alias python="python3"
alias ls="ls --color"
alias ll="ls -l --color"
alias la="ls -la --color"

export PATH="$HOME/Library/Python/3.12/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/Users/chill/.local/bin:$PATH"
export PATH="/usr/local/opt/php@8.1/bin:$PATH"
export PATH="/usr/local/opt/php@8.1/sbin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH


# Herd injected PHP 8.3 configuration.
export HERD_PHP_83_INI_SCAN_DIR="/Users/chiyu/Library/Application Support/Herd/config/php/83/"


# Herd injected PHP binary.
export PATH="/Users/chiyu/Library/Application Support/Herd/bin/":$PATH

# Created by `pipx` on 2024-06-21 07:38:54
export PATH="$PATH:/Users/chiyu/.local/bin"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/chiyu/code/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/chiyu/code/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/chiyu/code/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/chiyu/code/google-cloud-sdk/completion.zsh.inc'; fi
