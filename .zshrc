#I just stumbled across this problem myself (gradlew completion working, but no gradle completion) and found a solution:
#I had to add setopt complete_aliases to my zshrc and now everything is fine.
#Решает проблему когд работает либо antigen bundle gradle либо complition для gradle
setopt complete_aliases

# Implicit Tasks
# Gradle allows you to access tasks of subprojects from the project root implicitly. For example, given these tasks:
#
# :foo
# :help
# :bar:baz
# You can execute gradle baz from the project root and it will execute :bar:baz.
#
# gradle-completion will not tab complete these tasks by default because it adds a significant number of completion options, which may not be what you want and negatively impacts completion speed.
#
# To allow completion of implicit tasks, set $GRADLE_COMPLETION_UNQUALIFIED_TASKS=true:
export GRADLE_COMPLETION_UNQUALIFIED_TASKS="true"

# Говорим что наш терминал умеет 256 цветов, если не поставить то некторые плагины рисуют все белым цветом, например zsh-autosuggestions
export TERM=xterm-256color

####################################################################################################
# Запускаем antigen
####################################################################################################
source "$HOME/.antigen/antigen.zsh"

#Говорим антигену что сейчас будем работать с репозиторием oh-my-zsh
antigen use oh-my-zsh

#Подключаем плагины
antigen bundle git
antigen bundle gradle
#antigen bundle command-not-found

#antigen bundle mvn
antigen bundle sublime

#alias mvn="mvn-color"
#compctl -K listMavenCompletions mvn-color
#antigen bundle linux-china/oh-my-zsh-spring-boot-plugin

#Подсветка синтаксиса из репозитория zsh-users
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-completions

#Автокомплиты для Gradle
#Написано что плагин oh my zsh использует эти комплишены, но чет не работает и вместе не работают
#This plugin uses the completion from the Gradle project, which is distributed under the MIT license.
#Заработало при указании setopt complete_aliases
#Тут еще есть одно решение https://github.com/ohmyzsh/ohmyzsh/issues/4758
#antigen bundle gradle/gradle-completion

# Load the theme.
antigen theme robbyrussell

antigen bundle pe4enko/configs zsh/mvn
#antigen bundle robbyrussell/oh-my-zsh custom/
# Tell antigen that you're done.
antigen apply
####################################################################################################

# Path to your oh-my-zsh installation.
#export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
#plugins=(git gradle sublime spring mvn)

#source $ZSH/oh-my-zsh.sh
#export ANT_HOME=/home/madmax/work/PROD/ant/apache-ant-1.9.9
#export JAVA_HOME=/usr/lib/jvm/jdk1.7.0_80


# User configuration
export PATH=".:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:${ANT_HOME}/bin:$PATH"

# Добавим GoLang что бы запускался 
export PATH=$PATH:/usr/local/go/bin

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
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export JAVA7_HOME=/usr/lib/jvm/default-java-7
# The next line updates PATH for the Google Cloud SDK.
#if [ -f '/home/madmax/Загрузки/gcloud/google-cloud-sdk/path.zsh.inc' ]; then source '/home/madmax/Загрузки/gcloud/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
#if [ -f '/home/madmax/Загрузки/gcloud/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/madmax/Загрузки/gcloud/google-cloud-sdk/completion.zsh.inc'; fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/madmax/.sdkman"
[[ -s "/home/madmax/.sdkman/bin/sdkman-init.sh" ]] && source "/home/madmax/.sdkman/bin/sdkman-init.sh"
