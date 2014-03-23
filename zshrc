# Path to your oh-my-zsh configuration.
ZSH=/home/liuyi/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="apple"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often to auto-update? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to the command execution time stamp shown 
# in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/texlive/2013/bin/x86_64-linux:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
alias cls='clear'
alias ll='ls -l'
alias la='ls -a'
alias vi='vim'
alias javac="javac -J-Dfile.encoding=utf8"
alias grep="grep --color=auto"
alias -s html=chromium-browser   # 在命令行直接输入后缀为 html 的文件名，会在 TextMate 中打开
alias -s rb=mate     # 在命令行直接输入 ruby 文件，会在 TextMate 中打开
alias -s py=vi       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js=vi
alias -s c=vi
alias -s java=vi
alias -s txt=vi
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias -s pdf='evince'
#set -o vi
alias closetouch='xinput set-prop 14 "Device Enabled" 0'
alias opentouch='xinput set-prop 14 "Device Enabled" 1'
alias sshgit='ssh -T git@github.com'
alias sshnlp='ssh mapred@nlp.ict.ac.cn'
alias sshnj='ssh hadoop@smtoary.xicp.net'
alias ssh139='ssh torangetek-server2@192.168.1.139'
alias ssh161='ssh mapred@159.226.40.126'
alias brightness='xgamma -gamma .75' 
PKG_CONFIG_PATH=/opt/kde-3.3.0/lib/pkgconfig:/usr/lib/pkgconfig:/usr/local/pkgconfig:/usr/X11R6/lib/pkgconfig
export LD_LIBRARY_PATH=:/home/l/MT/NiuTrans_1.3.0_CWMT2013/src/../lib/
export LD_LIBRARY_PATH=:/home/l/MT/NiuTrans_1.3.0_CWMT2013/src/../lib/:/home/liuyi/MT/NiuTrans_1.3.0_CWMT2013/src/../lib/
export LD_LIBRARY_PATH=:/home/l/MT/NiuTrans_1.3.0_CWMT2013/src/../lib/:/home/liuyi/MT/NiuTrans_1.3.0_CWMT2013/src/../lib/
[[ -s ~/.autojump/etc/profile.d/autojump.sh ]] && . ~/.autojump/etc/profile.d/autojump.sh #autojump
