# Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.pre.zsh"
setopt auto_cd
export PATH="/usr/local/sbin:$PATH"
#PROMPT
source ~/.git-prompt.sh
GIT_PS1_SHOWUPSTREAM="verbose"
precmd () { __git_ps1 "%F{cyan}%~%f%F{blue}" "%s %f" }

#COMPLETION
autoload -Uz compinit && compinit

#Aliases
alias ccw='cc -Wall -Werror -Wextra'
alias remake='make fclean; make -j all'

ssh-add >/dev/null 2>/dev/null
ssh-add --apple-use-keychain ~/.ssh/github >/dev/null 2>/dev/null

export FSRPL_CREDENTIALS=~/.creds/future-log-dev-firebase-adminsdk-gehwl-4b5a743553.json
eval "$(/opt/homebrew/bin/brew shellenv)"

pwd

[[ -f "$HOME/fig-export/dotfiles/dotfile.zsh" ]] && builtin source "$HOME/fig-export/dotfiles/dotfile.zsh"
# Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zshrc.post.zsh"
