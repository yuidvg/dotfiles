# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
# Q pre block. Keep at the top of this file.
setopt auto_cd
export PATH="/usr/local/sbin:$PATH"
#PROMPT
source ~/.git-prompt.sh
GIT_PS1_SHOWUPSTREAM="verbose"
precmd () { __git_ps1 "%F{cyan}%~%f%F{blue}" "%s %f" }

# git-completion
fpath=(~/.zsh/completion $fpath)

# zsh-completion
autoload -U compinit
compinit -u
zstyle ':completion:*' completer _complete _approximate _prefix

#Aliases
alias ccw='cc -Wall -Werror -Wextra'
alias remake='make fclean; make -j all'

ssh-add >/dev/null 2>/dev/null
ssh-add --apple-use-keychain ~/.ssh/github >/dev/null 2>/dev/null

export FSRPL_CREDENTIALS=~/.creds/future-log-dev-firebase-adminsdk-gehwl-4b5a743553.json
eval "$(/opt/homebrew/bin/brew shellenv 2>/dev/null)" 

#Remake
alias remake='make fclean && make -j'

[[ -f "$HOME/fig-export/dotfiles/dotfile.zsh" ]] && builtin source "$HOME/fig-export/dotfiles/dotfile.zsh"
# Q post block. Keep at the bottom of this file.

[ -f "/Users/yui/.ghcup/env" ] && . "/Users/yui/.ghcup/env" # ghcup-env

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/yui/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
