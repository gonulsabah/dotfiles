# virtual environment settings
export WORKON_HOME=~/Envs
source /usr/local/bin/virtualenvwrapper.sh

# django manage shortcuts
alias run="python manage.py runserver"
alias plus="python manage.py shell_plus"

# git completion settings
source ~/git-completion.bash
alias gco='git co'
alias gci='git ci'
alias grb='git rb'

# git settings
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "


# postgres shortcuts
alias postg="postgres -E -D /usr/local/var/postgres/"


