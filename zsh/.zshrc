# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Essentials
export TERM=xterm-256color
export LANG=en_US.UTF-8
export ZSH="$HOME/.oh-my-zsh"

# Aliases
alias vim="nvim"
alias cat="bat"

# Plugins
source $ZSH/oh-my-zsh.sh

# Antigen
source $ZSH/antigen.zsh

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

alias luamake=/home/chiyu/language-server/lua-language-server/3rd/luamake/luamake
