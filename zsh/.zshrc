export ZSH="/Users/shawnmeier/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME=robbyrussell
ZSH_THEME=af-magic

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
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
# DISABLE_UPDATE_PROMPT="true" # Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker docker-compose)

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

export APK_TOOL_PATH="/Users/shawnmeier/software/apktool_2.4.1.jar"
export PYTHONPATH="${PYTHONPATH}:/Users/shawnmeier/software/z3/build/python"

alias copy="tr -d '\n' | pbcopy"
alias fnp="find \`pwd\` -name"
alias gw="./gradlew"
#alias jadx="/Users/shawnmeier/software/jadx/jadx-gui/build/install/jadx-gui/bin/jadx-gui"
alias startapk="python ~/Documents/source/TraceRunner/utils/start.py"
alias infoapk="python ~/Documents/source/TraceRunner/utils/pkgAndMainActivity.py ."
alias baksmali="java -jar /Users/s/software/smali/baksmali/build/libs/baksmali-2.2.0-b65e942e-fat.jar"
alias looptex="latexmk -pdf -pvc"
alias jdg="java -jar /Users/shawnmeier/software/jd-gui-1.6.5.jar"
alias codeql="/Users/shawnmeier/Documents/source/codeql-osx64/codeql"

eval "$(pyenv init -)"
export PATH="$HOME/.jenv/bin:/Users/shawnmeier/Library/Android/sdk/platform-tools:/Users/shawnmeier/Library/Android/sdk/build-tools/29.0.2:/Users/shawnmeier/software/bin:$PATH"
export PATH="$PATH:/Users/shawnmeier/software/spark-3.1.1-bin-hadoop2.7/bin"
export DYLD_LIBRARY_PATH=/Users/shawnmeier/software/z3/build;
export Z3_LIB=/Users/shawnmeier/software/z3/build;
eval "$(jenv init -)"

bindkey -v
export KEYTIMEOUT=1
export ANDROID_HOME="/Users/shawnmeier/Library/Android/sdk"
bindkey '^R' history-incremental-search-backward
set -k


export GTEST_INCLUDE_DIR="/usr/local/include/gtest/"
source /Users/shawnmeier/software/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# opam configuration
test -r /Users/shawnmeier/.opam/opam-init/init.zsh && . /Users/shawnmeier/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/shawnmeier/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/shawnmeier/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/shawnmeier/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/shawnmeier/google-cloud-sdk/completion.zsh.inc'; fi

alias blender="/Applications/Blender.app/Contents/MacOS/Blender"
alias sleep90="echo 'sleeping in 90 minutes'; sleep 5400 ; pmset sleepnow"
alias sqlite3="/usr/bin/sqlite3" # override android sqlite
#alias jq="jq --color-output" # pretty print json
alias opendot="/Users/shawnmeier/software/opendot.sh"


function expand_alias {
    if [[ ${aliases[$1]+x} ]]; then echo ${aliases[$1]}
    else echo $1; fi
}

# fuzzy-find: `ff cmd arg` applies `cmd` to a file named `arg` in the current tree
# N.B. ignores directories beginning with '_' or '.' to avoid searching into e.g. `./_build` or `./.git`
function ff () `expand_alias $1` `find . \( -path ./_\* -o -path ./.\* \) -prune -false -o -name $2`

export PYENV_ROOT="$HOME/.pyenv/shims"
export PATH="$PYENV_ROOT:$PATH"
export PIPENV_PYTHON="$PYENV_ROOT/python"

function st {
	say $(~/Documents/source/config-files/striptex.py $1)
}
