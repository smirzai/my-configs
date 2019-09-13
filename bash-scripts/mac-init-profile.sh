

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias k=kubectl
alias ls='ls -GFh'
alias ll='ls -GFhlh'

source /Applications/SourceTree.app/Contents/Resources/git_local/contrib/completion/git-completion.bash
source /Applications/SourceTree.app/Contents/Resources/git_local/contrib/completion/git-prompt.sh
GIT_PS1_SHOWDIRTYSTATE=true
export PS1="[\[\033[36m\]\u\[\033[m\]@\[\033[32m\]MAC:\[\033[33;1m\]\w\[\033[m\]\[\033[34;1m\]$(__git_ps1)]\$ \e[0;32m"
alias startmongo='~/opt/mongodb/bin/mongod -config /etc/mongod.conf'
alias edr="emacs `~/opt/dr`"
alias edo="emacs ~/Documents/dailyReports/todo.org"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/smirzaei/opt/google-cloud-sdk/path.bash.inc' ]; then source '/Users/smirzaei/opt/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/smirzaei/opt/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/smirzaei/opt/google-cloud-sdk/completion.bash.inc'; fi

export GOPATH=$HOME/go

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

