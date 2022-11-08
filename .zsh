# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export GOPATH=$HOME/go
export PATH=$PATH:$(go env GOPATH)/bin
export PATH=$(brew --prefix openvpn)/sbin:$PATH

# SMALLS PRIVATE BITBUCKET
export GOPRIVATE="bitbucket.org/technology-smalls/*"

# Path to your oh-my-zsh installation.
export ZSH="/Users/lele/.oh-my-zsh"

# Text based browsing
#export BROWSER=lynx

# Prompt
RPROMPT='[%D{%L:%M:%S}] '$RPROMPT

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias weather="curl http://wttr.in | less"
alias tst="npx jest --setupFiles dotenv/config --testTimeout 50000"
alias find="grep -ril -e $1 \."
alias c="clear"
alias k9="kill -9 $1"
alias ls="ls -ltra"
alias g="googler $1 $2 $3 $4"
alias sport="lsof -P -n -i | grep $1"

alias lambda="rm -rf .serverless && sls deploy --aws-profile $1 --stage $2 --region $3"
alias lambdalogs="awslogs get /aws/lambda/$1 --aws-region $2 --profile $3 ALL --start='$4'"

# Npm
alias nr="npm run $1"
alias nlf="npm run lint-fix"
alias nrd="npm run dev"
alias nrs="npm run start"
# Pg
alias pgstart="pg_ctl -D /usr/local/var/postgres start"
alias pgstop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
# Github
alias ga="git add ."
alias gp="git push origin $1"
alias gc.="git checkout ."
alias gc="git checkout $1"
alias gcd="git checkout development"
alias gc.d="git checkout . && git checkout development && git pull origin development"
alias gf="git fetch"
alias gcdf="gc.d && gf && $1"
alias parent="!git show-branch | grep '*' | grep -v \"$(git rev-parse --abbrev-ref HEAD)\" | head -n1 | sed 's/.*\\[\\(.*\\)\\].*/\\1/' | sed 's/[\\^~].*//' #"
alias gst="git status"
alias grs=" git restore --staged $1"
# Docker
alias limpiar="docker system prune --volumes"
alias dcd="docker-compose up -d"
alias dc="docker-compose up"
alias dcps="docker-compose ps"
alias dcpsa="docker-compose ps -a"
alias ds="docker stop $1"
alias dsa="docker stop $(docker ps)"
alias dps="docker ps"
alias dpsa="docker ps -a"


# Custom Functions

# V1 Smalls ALIAS
alias ywd="yarn webpack --mode=production &&  yarn deploy:dev  assets/common.js assets/landing-common.js assets/landing-pages-min.js assets/landing_account_coming_soon.js assets/login_state.js assets/notifications.js assets/order_status_page.js assets/products.js assets/recharge-script.js assets/signup-main.js assets/signup.css.liquid assets/styleguide.js assets/theme.css.liquid layout snippets/header.liquid sections/header.liquid"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/lele/Documents/smalls/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/lele/Documents/smalls/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/lele/Documents/smalls/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/lele/Documents/smalls/google-cloud-sdk/completion.zsh.inc'; fi
