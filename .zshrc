# Path to your oh-my-zsh installation.
export ZSH=/Users/D4NH/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="gallois"
ZSH_THEME="bira"

#BASE16_SHELL="$HOME/.config/base16-shell/base16-material.dark.sh"
#[[ -s $BASE16_SHELL ]] && source $BASE16_SHELL

BASE16_SHELL=$HOME/.config/base16-shell/
[ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git brew command-not-found history npm sudo zsh-256color zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

# User configuration
export PATH="/Users/D4NH/.gvm/vertx/current/bin:/Users/D4NH/.gvm/springboot/current/bin:/Users/D4NH/.gvm/lazybones/current/bin:/Users/D4NH/.gvm/jbake/current/bin:/Users/D4NH/.gvm/groovyserv/current/bin:/Users/D4NH/.gvm/groovy/current/bin:/Users/D4NH/.gvm/griffon/current/bin:/Users/D4NH/.gvm/grails/current/bin:/Users/D4NH/.gvm/gradle/current/bin:/Users/D4NH/.gvm/glide/current/bin:/Users/D4NH/.gvm/gaiden/current/bin:/Users/D4NH/.gvm/crash/current/bin:/Users/D4NH/.gvm/asciidoctorj/current/bin:/Users/D4NH/.jenv/shims:/Users/D4NH/.jenv/bin:/opt/local/bin:/opt/local/sbin:/Users/D4NH/pebble-dev/PebbleSDK-current/bin:/usr/local/bin:/usr/bin:/usr/.bin:/Users/D4NH/.bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin"
export PATH="/usr/local/sbin:$PATH"
export ANDROID_HOME=/usr/local/opt/android-sdk
export PATH=$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools:$ANDROID_HOME/build-tools
export EDITOR='subl'
export PATH=$(npm bin):$PATH webpack
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias edit="open -a Sublime\ Text"
alias npmc="rm -rf node_modules && npm cache clean && npm install"
alias info="neofetch"
alias ez="vim ~/.zshrc"
alias vh="vim ~/.hotkeys"
alias ld="gls -lh --color --group-directories-first"
alias lt="tree -L 1 -C -N --dirsfirst"
alias lda="gls -lhA --color --group-directories-first"
alias lta="tree -L 1 -C -N -a --dirsfirst"
alias cp="cp -v"
alias mv="mv -v"
alias rm="rm -v"
alias preview="open -a Preview"
alias serve="http-server -a localhost -p 9999 -c-1 --utc"
# IP addresses
alias whatismyip="curl curlmyip.com"
alias localip="ipconfig getifaddr en1"
# View HTTP traffic
alias sniff="sudo ngrep -d 'en1' -t '^(GET|POST) ' 'tcp and port 80'"
alias httpdump="sudo tcpdump -i en1 -n -s 0 -w - | grep -a -o -E \"Host\: .*|GET \/.*\""
alias npm-exec="PATH=$(npm bin):$PATH"
alias docker-timesync="docker run -it --rm --privileged --pid=host debian nsenter -t 1 -m -u -n -i date -u $(date -u +%m%d%H%M%Y)"

# custom boot scripts
neofetch
terminal-notifier -title 'iTerm2' -message 'Welcome Danh Nguyen'
