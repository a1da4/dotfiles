# Customize to your needs...
# python path
#export PYTHONPATH="/usr/local/lib/python3.7/site-packages:$PYTHONPATH"
export PYTHONPATH="/usr/local/bin/python3.6/site-packages:$PYTHONPATH"
# home brew で install したパッケージ（ImageMagic）を参照する
export DYLD_LIBRARY_PATH="/opt/homebrew/Cellar"
export DYLD_LIBRARY_PATH="/opt/homebrew/lib:$DYLD_LIBRARY_PATH"

#単語の入力途中でもTab補完を有効化
setopt complete_in_word
# 補完候補をハイライト
zstyle ':completion:*:default' menu select=1
# キャッシュの利用による補完の高速化
zstyle ':completion::complete:*' use-cache true
#大文字、小文字を区別せず補完する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'
# 補完リストの表示間隔を狭くする
setopt list_packed

# 補完機能
autoload -U compinit
compinit -u

# 色設定
autoload -U colors; colors

# もしかして機能
setopt correct

export LSCOLORS=exfxcxdxbxegedabagacad
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
export PS1="%10F%m%f:%11F%1~%f \$ "


alias ls="ls -GF"
alias gls="gls --color"

zstyle ':completion:*' list-colors 'di=34' 'ln=35' 'so=32' 'ex=31' 'bd=46;34' 'cd=43;34'

# カレントディレクトリの表示
PROMPT='
%F{green}%B%m:%~%b%f
%F{green}%B>%b%f '

# ペーストした時に不要なインデントを回避
autoload -Uz bracketed-paste-magic
zle -N bracketed-paste bracketed-paste-magic
