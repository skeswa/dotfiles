# Connection Aliases
## Tom's Katarina - Password 'dabdabd6'
alias katarina='ssh root@bitbeam.info'
# Sandile.io Server
alias sandileio='ssh root@sandile.io'
# Owlhacks
alias owlhacks='ssh tudev@owlhacks.cloudapp.net'
# Tudev
alias tudev='ssh tudev@tudev.cloudapp.net'
# Technuf Chronicle
alias chronicle='ssh skeswa@chronicle.technuf.com'

# Workspace Teleports
## Generic repos teleport
alias goto_repos='cd ~/dev/repos'
## Generic hack  teleport
alias goto_hack='cd ~/dev/repos/hack'
## Generic vagrant teleport
alias goto_vagrant='cd ~/dev/vagrant'
## Turbo
alias goto_turbo='cd ~/go/src/github.com/logmein3546/turbo && git status'
## Conch
alias goto_conch='cd ~/dev/repos/temple/conch && git status'
## Owlhacks
alias goto_owlhacks='cd ~/dev/repos/owlhacks/site && git status'
## Tudev
alias goto_tudev='cd ~/dev/repos/tudev/website && git status'

# Tmux Shortcuts

# Other Knick-Knacks
## Make path and go there
mkcd() {
	mkdir -p "$@" && cd "$@";
}
## Check LoL ping
alias lolping='ping 216.52.241.254'
## Check google ping
alias googping='ping google.com'
## Print Pubkey
alias pubkey='cat ~/.ssh/id_rsa.pub'
## Git Status
alias gs='git status'
## Expose port with ngrok
alias expose='~/dev/lib/ngrok/ngrok -authtoken hyPleVr0pGbBXePMpRwj --subdomain=sandile'
## SSH -> SSHD
alias ssh='sshrc'
## Tmux and other multiplexers
export TERM='xterm-256color'
### enable 256color for terminal multiplexs
alias tmux='tmux -2'
alias screen='TERM=xterm-256color screen'
### easily re-source tmux after conf changes
alias refresh-tmux='tmux source-file ~/.tmux.conf'
### easy shortcut for sessions
mux() {
	tmux a -t "$@" || tmux new-session -s "$@";
}
## Update dotfiles
alias update-dotfiles='(vcsh dotfiles add -u && vcsh dotfiles commit -m "updates" && vcsh dotfiles push origin master) &> /dev/null'

# Append to the path
## Paths in order: phantom js, android sdk, vcsh, maven
PATH=$PATH:~/dev/lib/phantomjs-1.9.7-macosx/bin:~/dev/lib/android-sdk/platform-tools:~/dev/lib/vcsh:~/dev/lib/apache-maven-3.2.3/bin
export PATH

# Environment variables
export GOPATH="/Users/sandile/go"
export M2_HOME="~/dev/lib/apache-maven-3.2.3"
