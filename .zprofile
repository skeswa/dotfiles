# Set Paths
export GOPATH="/Users/sandile/go"

# Connection Aliases
## ACM Web Server: sandile@acmsrv1.cis.temple.edu
alias tuacm='ssh sandile@acmsrv1.cis.temple.edu'
## Technuf Elara: skeswa@elara.technuf.com
alias elara='ssh skeswa@elara.technuf.com'
## Flappyo
alias flappyo='ssh root@104.131.216.231'
## Tom's Katarina - Password 'dabdabd6'
alias katarina='ssh root@bitbeam.info'
## ACM DB Server
alias tuacmdb='ssh root@104.131.192.61'
## CIS 3238
alias 3238='ssh tue95828@babyhuey.cis.temple.edu'
# Sandile.io Server
alias sandileio='ssh root@sandile.io'
# Beagle Bone
alias beaglebone='ssh root@192.168.7.2'
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
## Temple ACM Site
alias goto_tuacm='cd ~/dev/repos/tuacm/tuacm-site && git status'
## Turbo
alias goto_turbo='cd ~/go/src/github.com/logmein3546/turbo && git status'
## Temple ACM Site
alias goto_aphelia='cd ~/dev/repos/technuf/aphelia-1.2 && git status'
## BCV stuff
alias goto_bcv_ng_query='cd ~/dev/repos/bcv/ng-query && git status'
## Conch
alias goto_conch='cd ~/dev/repos/temple/conch && git status'
## Owlhacks
alias goto_owlhacks='cd ~/dev/repos/owlhacks/site && git status'
## Tudev
alias goto_tudev='cd ~/dev/repos/tudev/website && git status'

# Other Knick-Knacks
## Check LoL ping
alias lolping='ping 216.52.241.254'
## Check google ping
alias googping='ping google.com'
## Print Pubkey
alias pubkey='cat ~/.ssh/id_rsa.pub'
## Git Status
alias gs='git status'
## Expose port with ngrok
alias expose='ngrok -authtoken hyPleVr0pGbBXePMpRwj --subdomain=sandile'
## SSH -> SSHD
alias ssh='sshrc'
## Tmux and other multiplexers
export TERM='xterm-256color'
### enable 256color for terminal multiplexs
alias tmux='tmux -2'
alias screen='TERM=xterm-256color screen'

# Append to the path
PATH=$PATH:~/dev/lib/phantomjs-1.9.7-macosx/bin # PhantomJS
PATH=$PATH:~/dev/lib/android-sdk/platform-tools # ADB & Android Tools
PATH=$PATH:~/dev/lib/ngrok 						# Ngrok
PATH=$PATH:~/dev/lib/vcsh 						# vcsh
