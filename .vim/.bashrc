# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

export PS1='\[\e[1;34m\][\u@khan! \W]\$\[\e[0m\] '

export VISUAL=vi

alias sc='script/console'
alias psu='ps aux | grep uadmin'
alias psm='ps aux | grep mongrel'
alias uadmin='cd /home/e3/dev/uadmin'
alias tac='cd /home/e3/dev/webTAC'
alias maint='cd /home/e3/dev/webTAC-maint'
alias e3dev='cd /home/e3/dev/'
alias ras='cd /home/e3/dev/ras20'

alias aws='cd /home/e3/dev/webTAC'
alias whodunit='echo CURRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRRYYYYYYY'
alias dbd='mysql -u root -peven-fish uadmin_development'
alias dbt='mysql -u root -peven-fish uadmin_test'
alias dbp='mysql -u root -peven-fish uadmin_production'
alias dev='export RAILS_ENV=development'
alias test='export RAILS_ENV=test'
alias vi='vim'
alias WHAT='echo "WHAT DID YOU JUST SAY TO ME?!" &&
sleep 1 && echo "." && sleep 1 && echo "." && sleep 1 && echo "." && sleep 5 &&
echo "I SAID YOU HAVE BAD HAIR!!!!!!!!!!!"'
alias vv='export VISUAL=vi'
alias gemdir='cd /usr/lib64/ruby/gems/1.8/gems/'
alias c0='ssh clay-ui0'
alias c1='ssh clay-ui1'
alias g0='ssh granite-ui0'
alias g1='ssh granite-ui1'
alias f0='ssh flint-ui0'
alias ..='cd ..'
alias ct='ctags --exclude=.svn --exclude=tmp -R .'
alias uvi='~/.vim/updatevimrc.rb'
alias dt='cd ~/Desktop'



# set LC_ALL to POSIX to get the desired sort order
export LC_ALL=POSIX

export PATH=/opt/CollabNet_Subversion/bin:$PATH
export JDK_HOME=/usr/lib/jvm/jre-1.6.0-sun.x86_64
