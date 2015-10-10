#
# Executes commands at login pre-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

#
# Browser
#

if [[ "$OSTYPE" == darwin* ]]; then
  export BROWSER='open'
fi

#
# Editors
#

export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
path=(
  /usr/local/{bin,sbin}
  $path
)

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-F -g -i -M -R -S -w -X -z-4'

# Set the Less input preprocessor.
# Try both `lesspipe` and `lesspipe.sh` as either might exist on a system.
if (( $#commands[(i)lesspipe(|.sh)] )); then
  export LESSOPEN="| /usr/bin/env $commands[(i)lesspipe(|.sh)] %s 2>&-"
fi

#
# Temporary Files
#

if [[ ! -d "$TMPDIR" ]]; then
  export TMPDIR="/tmp/$LOGNAME"
  mkdir -p -m 700 "$TMPDIR"
fi

TMPPREFIX="${TMPDIR%/}/zsh"

########################### SANDILE'S CONFIGURATION ###########################
#
## Environment
#
### Vagrant
#
export VAGRANT_DEFAULT_PROVIDER="virtualbox"
#
### Golang
#
export GOPATH=$HOME/go
#
### Android
#
export ANDROID_NDK="$HOME/dev/lib/android/android-ndk-r10e"
export ANDROID_SDK="$HOME/Library/Android/sdk"
export ANDROID_STANDALONE_TOOLCHAIN="$HOME/dev/lib/android/android-standalone-toolchain"
export ANDROID_HOME="$ANDROID_SDK"
#
### Python
#
### General
#
export PATH=$GOPATH/bin:$PATH:$HOME/.rvm/bin:$ANDROID_NDK:$ANDROID_SDK/tools:$ANDROID_STANDALONE_TOOLCHAIN/bin
export GURU_DEV_EXT=gdcjbkagamkiankghgfheojobpkdchjd
#
## Aliases & helpers
### Tmux helper
#
mux() {
    tmux a -t "$@" || tmux new-session -s "$@";
}
#
### Git Aliases
#
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git pull"
alias gaa="git add -A"
alias gac="git add -A && git commit -m"
alias pushdev="git push origin develop"
alias pulldev="git pull origin develop"
#
### Git Flow Aliases
#
alias gf="git flow"
alias feature="git flow feature"
alias hotfix="git flow hotfix"
alias release="git flow release"
#
### Pingtests
#
alias lolping="ping 104.160.131.1"
alias googping="ping google.com"
#
### Teleports
#
alias goto-tudev="cd $HOME/dev/repos/tudev/tudev.github.io"
alias goto-squareknot="cd $HOME/Squareknot/Patrick"
alias goto-cnxl="cd $HOME/dev/repos/conxsoft/conx-logistics-platform/com.conx.logistics.frontend.webui"
#
### Networking Aliases
#
alias expose="ngrok -authtoken hyPleVr0pGbBXePMpRwj --subdomain=sandile"
#
export NVM_DIR="/Users/skeswa/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
#
### Docker
#
alias init-docker="docker-machine start default; eval \"\$(docker-machine env default)\""
