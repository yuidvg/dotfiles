#PROMPT
source ~/dotfiles/script/.git-prompt.sh
GIT_PS1_SHOWUPSTREAM="verbose"
precmd () { __git_ps1 "%F{cyan}%~%f%F{blue}" "%s %f" }

# add completion to fpath
fpath=(~/.zsh/completion /Users/yui/.docker/completions $fpath)

# COMPLETION
# zsh-completion
autoload -U compinit && compinit
zstyle ':completion:*' completer _complete _approximate _prefix
setopt auto_cd


# homebrew
eval "$(/opt/homebrew/bin/brew shellenv 2>/dev/null)"

#Aliases
alias ccw='cc -Wall -Werror -Wextra'
alias remake='make fclean; make -j all'

# ssh agent
ssh-add >/dev/null 2>/dev/null
ssh-add --apple-use-keychain ~/.ssh/github >/dev/null 2>/dev/null

# Created by `pipx`
export PATH="/usr/local/sbin:/Users/yui/.local/bin:$PATH"

# pipx completion
eval "$(register-python-argcomplete pipx 2>/dev/null)"
