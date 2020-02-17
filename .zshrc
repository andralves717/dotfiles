# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/andralves/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git gitfast
  extract web-search yum git-extras docker vagrant
  python
  vscode
  vim-interaction
  ubuntu
  sudo
  safe-paste
  pip
  pep8
  gnu-utils
  github
  emoji emoji-clock
  cp
  copydir copyfile
  colored-man-pages
  battery
  common-aliases
  colorize
)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export QSYS_ROOTDIR="/opt/intelFPGA_lite/17.1/quartus/sopc_builder/bin"

if [ -d /opt/intelFPGA_lite/17.1/quartus/bin ]; then
export PATH=$PATH:/opt/intelFPGA_lite/17.1/quartus/bin
fi

alias stremio="/$HOME/Stremio.appimage"
# Install Ruby Gems to ~/gems
export GEM_HOME=$HOME/gems
export PATH=$HOME/gems/bin:$PATH

DEFAULT_USER prompt_context(){}

alias 🌺="cat ~/hibiscus"
alias 🔱="cat ~/trident"
alias 🍒="cat ~/cherry"

if [ -d /opt/pic32mx/bin ] ; then
         export PATH=$PATH:/opt/pic32mx/bin
fi

detpic() {
	# r.rosmaninho@ua.pt
	if [ ! -f $1 ]; then
		printf "\nO ficheiro \"$1\" nao existe!\n"
		return 1
	fi
	if [[ ! $1 = *.hex ]]; then
		pcompile $1
		if [ "$?" != 0 ]; then
	  		return 2
		fi
	fi
	i=-1
	done=0
	for i in $(ls /dev | grep ttyUSB); do
	   	 ldpic32 "${1%.*}.hex" -p "/dev/$i"
	   	 if [ "$?" = 0 ] ; then
	   	 	done=1
	   	 	break
	   	fi
	done
	if [ $done = 1 ]; then
		pterm -p "/dev/$i"
		return 0
	else
		printf "\nNao foi possivel encontrar a DETPIC :(\n"
		return 3
	fi
}

export CLASSPATH=".:/usr/local/lib/antlr-4.7.2-complete.jar:$CLASSPATH"
export ANTLR4_PATH="/usr/local/lib"


alias ac2="cd ~/Documents/AC2/"
alias build=antlr4-build
alias run=antlr4-run
alias clean=antlr4-clean
alias a4-test=antlr4-test
alias main=antlr4-main
alias config='/usr/bin/git --git-dir=/home/andralves/.cfg/ --work-tree=/home/andralves'

alias iia="source $HOME/.local/bin/iiia"

alias :w="xcowsay \"You aren't in vim, Jackass\""
alias :wq="xcowsay \"You aren't in vim, Jackass\""
alias :q="xcowsay \"You aren't in vim, Jackass\""
alias :q!="xcowsay \"You aren't in vim, Jackass\""
alias :x="xcowsay \"You aren't in vim, Jackass\""
