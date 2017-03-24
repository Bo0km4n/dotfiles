bindkey -e # ターミナル上でのkeybind
zmodload -i zsh/mathfunc
zmodload -i zsh/complist
export ZPLUG_HOME=$HOME/.zplug
autoload -Uz compinit; compinit
autoload -U promptinit; promptinit
autoload -Uz colors; colors

source ~/.zplug/init.zsh
zplug "b4b4r07/enhancd", use:init.sh zplug 'zsh-users/zsh-autosuggestions'
zplug 'zsh-users/zsh-completions'
zplug "zsh-users/zsh-history-substring-search"
zplug 'zsh-users/zsh-syntax-highlighting', defer:2
zplug "mollifier/anyframe"
zplug "mollifier/cd-gitroot"
zplug "peco/peco", as:command, from:gh-r
# zplug 'mafredri/zsh-async', from:github
# zplug 'sindresorhus/pure', use:pure.zsh, from:github, as:theme
zplug "themes/robbyrussell", from:oh-my-zsh
zplug check || zplug install

# Zplug init
#------------------------------------i
if [[ ! -d ~/.zplug ]]; then
    git clone https://github.com/zplug/zplug ~/.zplug
    source ~/.zplug/init.zsh && zplug update --self
fi

setopt share_history # History共有
setopt extended_history # 開始と終了を記録
setopt hist_ignore_dups # 直前と同じコマンドの場合は履歴に追加しない
setopt hist_ignore_all_dups # 重複するコマンドは古い法を削除する
setopt hist_verify

setopt no_beep # beepを無効にする
setopt auto_cd # ディレクトリ名だけでcdする
setopt auto_pushd # cdしたら自動的にpushdする
setopt auto_menu
setopt auto_param_keys
setopt always_to_end

setopt complete_in_word
setopt mark_dirs
# setopt menu_complete
setopt prompt_subst


# zstyle ":anyframe:selector:" use peco
bindkey '^xb' anyframe-widget-cdr
bindkey '^x^b' anyframe-widget-checkout-git-branch
bindkey '^r' anyframe-widget-execute-history
bindkey '^xi' anyframe-widget-put-history
bindkey '^xg' anyframe-widget-cd-ghq-repository
bindkey '^xk' anyframe-widget-kill
bindkey '^xe' anyframe-widget-insert-git-branch
zplug load


zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

alias l="ls"
alias vi="vim"
alias ll="ls -l"
alias la="ls -la"
alias javac='javac -J-Dfile.encoding=UTF-8'
alias java='java -Dfile.encoding=UTF-8'
alias syncvi='cp ~/.vimrc ~/vim/.vimrc'
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000

# Direnv
#-----------------------------------------------
eval "$(direnv hook zsh)"

# Anyenv
#-----------------------------------------------
if [ -d $HOME/.anyenv ]; then
  eval "$(anyenv init -)"
fi
