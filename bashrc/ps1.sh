
################################################################################

# Regular:
txtblk='\e[0;30m' # Black
txtred='\e[0;31m' # Red
txtgrn='\e[0;32m' # Green
txtylw='\e[0;33m' # Yellow
txtblu='\e[0;34m' # Blue
txtpur='\e[0;35m' # Purple
txtcyn='\e[0;36m' # Cyan
txtwht='\e[0;37m' # White

# Bold: (lighter)
bldblk='\e[1;30m' # Black
bldred='\e[1;31m' # Red
bldgrn='\e[1;32m' # Green
bldylw='\e[1;33m' # Yellow
bldblu='\e[1;34m' # Blue
bldpur='\e[1;35m' # Purple
bldcyn='\e[1;36m' # Cyan
bldwht='\e[1;37m' # White

# Underline:
unkblk='\e[4;30m' # Black
undred='\e[4;31m' # Red
undgrn='\e[4;32m' # Green
undylw='\e[4;33m' # Yellow
undblu='\e[4;34m' # Blue
undpur='\e[4;35m' # Purple
undcyn='\e[4;36m' # Cyan
undwht='\e[4;37m' # White

# Background:
bakblk='\e[40m'   # Black
bakred='\e[41m'   # Red
bakgrn='\e[42m'   # Green
bakylw='\e[43m'   # Yellow
bakblu='\e[44m'   # Blue
bakpur='\e[45m'   # Purple
bakcyn='\e[46m'   # Cyan
bakwht='\e[47m'   # White

txtrst='\e[0m'    # Text Reset

################################################################################


[ -s /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh ] && source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh # OSX
[ -s /etc/bash_completion.d/git ] && source /etc/bash_completion.d/git #Linux

type __git_ps1 > /dev/null 2> /dev/null && PS1BRANCH='$(__git_ps1)'
which node     > /dev/null 2> /dev/null && PS1NODEVERSION='[$(node -v | sed "s/^v//" | sed "s/\.[0-9]\{1,\}$//")] '

# \t is time
# \u is user
# \h is comp
# \w is working directory

PS1='\t:\u@\h '$PS1NODEVERSION\\w$PS1BRANCH' $ '


################################################################################
