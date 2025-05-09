#PROMPT
source ~/dotfiles/script/.git-prompt.sh
GIT_PS1_SHOWUPSTREAM="verbose"
precmd () { __git_ps1 "%F{cyan}%~%f%F{blue}" "%s %f" }

# COMPLETION
# zsh-completion
autoload -U compinit
compinit -u
zstyle ':completion:*' completer _complete _approximate _prefix
setopt auto_cd
export PATH="/usr/local/sbin:$PATH"

# git-completion
fpath=(~/.zsh/completion $fpath)

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/yui/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

# homebrew
eval "$(/opt/homebrew/bin/brew shellenv 2>/dev/null)"

#Aliases
alias ccw='cc -Wall -Werror -Wextra'
alias remake='make fclean; make -j all'

# ssh agent
ssh-add >/dev/null 2>/dev/null
ssh-add --apple-use-keychain ~/.ssh/github >/dev/null 2>/dev/null
