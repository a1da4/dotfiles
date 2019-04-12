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

" ステータス業を常に表示
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

" タブを押した時の文字幅
set expandtab
set tabstop=4
set softtabstop=4

" インデント
set autoindent
set smartindent
set shiftwidth=4


"################
" 検索
"################

" 1文字ごとに検索
set incsearch

" 大文字小文字を区別しない
set ignorecase

" クエリに大文字を含んでいたら区別
set smartcase

" 結果をハイライト
set hlsearch

" ESCキー2度押しでハイライトの切り替え
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>


"###############
" ペースト指定
"###############

if &term =~ "xterm"
    let &t_SI .= "\e[?2004h"
    let &t_EI .= "\e[?2004l"
    let &pastetoggle = "\e[201~"

    function XTermPasteBegin(ret)
        set paste
        return a:ret
    endfunction

    inoremap <special> <expr> <Esc>[200~ XTermPasteBegin("")

endif


"##############
" インストール
"##############

" インデントの可視化
"NeoBundle "Yggdroot/indentLine"

