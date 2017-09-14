alias l="ls"
alias mvim="/Applications/MacVim.app/Contents/MacOS/Vim"
alias vi="mvim -g"
alias ll="ls -l"
alias la="ls -la"
alias javac='javac -J-Dfile.encoding=UTF-8'
alias java='java -Dfile.encoding=UTF-8'
alias syncvi='cp ~/.vimrc ~/vim/.vimrc'
alias ctags='/usr/local/Cellar/ctags/5.8_1/bin/ctags'
alias gore='~/go/bin/gore'
alias gogit='cd ~/go/src/github.com/KatsuyaKawabe'
alias 3-shake='cd ~/go/src/github.com/3-shake'
alias dcu='docker-compose up'
alias dcd='docker-compose down -v'
alias dcrapi='docker-compose restart reckoner-web-api'
alias dcgotest='docker-compose run reckoner-web-api ginkgo -r'
alias cb='circleci build'
alias godep='/usr/local/Cellar/godep/79_5/bin/godep'

## docker cli
alias docker-rm-exited='docker rm $(docker ps -a --filter 'status=exited' -q)'
alias docker-rm-all='docker rm -v $(docker ps -aq)'
alias docker-stop='docker stop $(docker ps -aq)'
alias docker-rmi='docker rmi'
alias docker-rmi-all='docker rmi -f $(docker images -aq)'
alias docker-rmi-none='docker rmi $(docker images -f "dangling=true" -q)'
alias docker-ps-all='docker ps -a'
alias docker-volume-ls='docker volume ls'
alias docker-volume-rm='docker volume rm $(docker volume ls -qf dangling=true)'
alias docker-image-ls='docker image ls'
alias docker-netork-ls='docker network ls'
alias docker-compose-down='docker-compose down --volumes'
