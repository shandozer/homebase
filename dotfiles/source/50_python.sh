# PYTHON_PATH=/usr/local/share/python
# PATH=$PYTHON_PATH:$(path_remove $PYTHON_PATH)
# export PATH

export PROJECT_HOME=~/projects
export WORKON_HOME=~/envs
source /usr/local/bin/virtualenvwrapper.sh

# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end

