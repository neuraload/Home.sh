#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\[\e[0;36m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[1;36m\]:) \[\e[m\]'
alias grep='grep --color=auto'

# Getting GIT completion

if [ -f ~bal/.git-completion.bash ]; then
	source ~bal/.git-completion.bash
fi

# A simple function to restart apache using systemctl service manager

function apache_restart(){

YELLOW="\033[1;33m"
RED="\033[1;31m"
END="\033[0m"
echo -e $YELLOW"Restarting apache..."$END

apache=`sudo systemctl restart httpd.service`
status=$?

if [ $status -eq 0 ]; then
    echo -e $RED"Done"$END
else
    echo $RED"Failed"$END
fi

}



