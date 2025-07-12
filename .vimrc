"##############
" 表示形式
"##############

" 文字コードの設定
set encoding=utf-8
scriptencoding utf-8

" 行番号を表示
set number

" 現在の行を強調表示
set cursorline

" 対応する括弧やブレースを表示
set showmatch
set matchtime=1

" ステータス行を常に表示
set laststatus=2

" 省略されずに表示
set display=lastline

" カラー表示オン
syntax on
colorscheme elflord

" コメントの色を水色
hi Comment ctermfg=6

" タイトルを表示
set title

" ビープを鳴らさない
set noerrorbells
set belloff=all

"#######################
" インデントとタブ設定
"#######################

set noexpandtab       " タブ文字を使う（スペースに変換しない）
set tabstop=4         " タブ1個 = 4文字ぶんの表示
set softtabstop=4     " タブキーの動作も4文字相当
set shiftwidth=4      " 自動インデントも4文字分
set smartindent       " スマートなインデント
set autoindent        " 前の行に合わせて自動インデント

" Pythonファイル用の設定（念のため明示）
autocmd FileType python setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4

"################
" Undo設定
"################
if has('persistent_undo')
	let undo_path = expand('~/.vim/undo')
	if !isdirectory(undo_path)
		call mkdir(undo_path, "p")
	endif
	set undodir=~/.vim/undo
	set undofile
endif

" バックスペースを自然に使えるように
set backspace=indent,eol,start

"################
" 検索
"################

set incsearch         " インクリメンタル検索
set ignorecase        " 小文字で検索すれば大文字もヒット
set smartcase         " 大文字を含むと区別する
set hlsearch          " 検索結果をハイライト

" ESC を2回押すとハイライト解除
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>

