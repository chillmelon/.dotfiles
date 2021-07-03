#-- START ZCACHE GENERATED FILE
#-- GENERATED: Sat Jul  3 17:53:16 CST 2021
#-- ANTIGEN v2.2.2
_antigen () {
	local -a _1st_arguments
	_1st_arguments=('apply:Load all bundle completions' 'bundle:Install and load the given plugin' 'bundles:Bulk define bundles' 'cleanup:Clean up the clones of repos which are not used by any bundles currently loaded' 'cache-gen:Generate cache' 'init:Load Antigen configuration from file' 'list:List out the currently loaded bundles' 'purge:Remove a cloned bundle from filesystem' 'reset:Clears cache' 'restore:Restore the bundles state as specified in the snapshot' 'revert:Revert the state of all bundles to how they were before the last antigen update' 'selfupdate:Update antigen itself' 'snapshot:Create a snapshot of all the active clones' 'theme:Switch the prompt theme' 'update:Update all bundles' 'use:Load any (supported) zsh pre-packaged framework') 
	_1st_arguments+=('help:Show this message' 'version:Display Antigen version') 
	__bundle () {
		_arguments '--loc[Path to the location <path-to/location>]' '--url[Path to the repository <github-account/repository>]' '--branch[Git branch name]' '--no-local-clone[Do not create a clone]'
	}
	__list () {
		_arguments '--simple[Show only bundle name]' '--short[Show only bundle name and branch]' '--long[Show bundle records]'
	}
	__cleanup () {
		_arguments '--force[Do not ask for confirmation]'
	}
	_arguments '*:: :->command'
	if (( CURRENT == 1 ))
	then
		_describe -t commands "antigen command" _1st_arguments
		return
	fi
	local -a _command_args
	case "$words[1]" in
		(bundle) __bundle ;;
		(use) compadd "$@" "oh-my-zsh" "prezto" ;;
		(cleanup) __cleanup ;;
		(update|purge) compadd $(type -f \-antigen-get-bundles &> /dev/null || antigen &> /dev/null; -antigen-get-bundles --simple 2> /dev/null) ;;
		(theme) compadd $(type -f \-antigen-get-themes &> /dev/null || antigen &> /dev/null; -antigen-get-themes 2> /dev/null) ;;
		(list) __list ;;
	esac
}
antigen () {
  local MATCH MBEGIN MEND
  [[ "$ZSH_EVAL_CONTEXT" =~ "toplevel:*" || "$ZSH_EVAL_CONTEXT" =~ "cmdarg:*" ]] && source "/Users/chillmelon/.oh-my-zsh/antigen.zsh" && eval antigen $@;
  return 0;
}
typeset -gaU fpath path
fpath+=(/Users/chillmelon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/chillmelon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /Users/chillmelon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew /Users/chillmelon/.antigen/bundles/zsh-users/zsh-syntax-highlighting /Users/chillmelon/.antigen/bundles/zsh-users/zsh-autosuggestions /Users/chillmelon/.antigen/bundles/zsh-users/zsh-completions /Users/chillmelon/.antigen/bundles/romkatv/powerlevel10k) path+=(/Users/chillmelon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git /Users/chillmelon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip /Users/chillmelon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew /Users/chillmelon/.antigen/bundles/zsh-users/zsh-syntax-highlighting /Users/chillmelon/.antigen/bundles/zsh-users/zsh-autosuggestions /Users/chillmelon/.antigen/bundles/zsh-users/zsh-completions /Users/chillmelon/.antigen/bundles/romkatv/powerlevel10k)
_antigen_compinit () {
  autoload -Uz compinit; compinit -d "/Users/chillmelon/.antigen/.zcompdump"; compdef _antigen antigen
  add-zsh-hook -D precmd _antigen_compinit
}
autoload -Uz add-zsh-hook; add-zsh-hook precmd _antigen_compinit
compdef () {}

if [[ -n "/Users/chillmelon/.oh-my-zsh" ]]; then
  ZSH="/Users/chillmelon/.oh-my-zsh"; ZSH_CACHE_DIR="/Users/chillmelon/.oh-my-zsh/cache"
fi
#--- BUNDLES BEGIN
source '/Users/chillmelon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh';
source '/Users/chillmelon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh';
source '/Users/chillmelon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew/brew.plugin.zsh';
source '/Users/chillmelon/.antigen/bundles/zsh-users/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh';
source '/Users/chillmelon/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh';
source '/Users/chillmelon/.antigen/bundles/zsh-users/zsh-completions/zsh-completions.plugin.zsh';
source '/Users/chillmelon/.antigen/bundles/romkatv/powerlevel10k/powerlevel10k.zsh-theme.antigen-compat';

#--- BUNDLES END
typeset -gaU _ANTIGEN_BUNDLE_RECORD; _ANTIGEN_BUNDLE_RECORD=('https://github.com/robbyrussell/oh-my-zsh.git plugins/git plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/pip plugin true' 'https://github.com/robbyrussell/oh-my-zsh.git plugins/brew plugin true' 'https://github.com/zsh-users/zsh-syntax-highlighting.git / plugin true' 'https://github.com/zsh-users/zsh-autosuggestions.git / plugin true' 'https://github.com/zsh-users/zsh-completions.git / plugin true' 'https://github.com/romkatv/powerlevel10k.git / theme true')
typeset -g _ANTIGEN_CACHE_LOADED; _ANTIGEN_CACHE_LOADED=true
typeset -ga _ZCACHE_BUNDLE_SOURCE; _ZCACHE_BUNDLE_SOURCE=('/Users/chillmelon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git' '/Users/chillmelon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/git/git.plugin.zsh' '/Users/chillmelon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip' '/Users/chillmelon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/pip/pip.plugin.zsh' '/Users/chillmelon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew' '/Users/chillmelon/.antigen/bundles/robbyrussell/oh-my-zsh/plugins/brew/brew.plugin.zsh' '/Users/chillmelon/.antigen/bundles/zsh-users/zsh-syntax-highlighting//' '/Users/chillmelon/.antigen/bundles/zsh-users/zsh-syntax-highlighting///zsh-syntax-highlighting.plugin.zsh' '/Users/chillmelon/.antigen/bundles/zsh-users/zsh-autosuggestions//' '/Users/chillmelon/.antigen/bundles/zsh-users/zsh-autosuggestions///zsh-autosuggestions.plugin.zsh' '/Users/chillmelon/.antigen/bundles/zsh-users/zsh-completions//' '/Users/chillmelon/.antigen/bundles/zsh-users/zsh-completions///zsh-completions.plugin.zsh' '/Users/chillmelon/.antigen/bundles/romkatv/powerlevel10k//' '/Users/chillmelon/.antigen/bundles/romkatv/powerlevel10k///powerlevel10k.zsh-theme')
typeset -g _ANTIGEN_CACHE_VERSION; _ANTIGEN_CACHE_VERSION='v2.2.2'

#-- END ZCACHE GENERATED FILE
