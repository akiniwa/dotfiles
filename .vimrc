syntax on "シンタックスハイライトを有効にする
"set nobackup "バックアップファイルを作らない設定にする

set encoding=utf-8 "デフォルトの文字コード
set fileencodings=iso-2022-jp,euc-jp,utf-8,ucs-2,cp932,sjis "自動判別に使用する文字コード 
set autoindent "オートインデントする
set number "行番号を表示する
set incsearch "インクリメンタルサーチ
set ignorecase "検索時に大文字小文字を無視する
set showmatch "対応する括弧のハイライト表示する
set showmode "モード表示する
set title "編集中のファイル名を表示する
set ruler "ルーラーの表示する
set tabstop=4
set expandtab
set shiftwidth=4
set cursorline
let g:BASH_Ctrl_j = 'off'
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/" 全角スペースの表示
let g:neocomplcache_enable_at_startup = 1
let g:BASH_Ctrl_j = 'off'
let g:pep8_map='<C-A>'

" Sage settings (from Franco Saliola)
autocmd BufRead,BufNewFile *.sage,*.pyx,*.spyx set filetype=python
autocmd Filetype python set tabstop=4|set shiftwidth=4|set expandtab
autocmd FileType python set makeprg=sage\ -b\ &&\ sage\ -t\ %
" Set jade
autocmd BufRead,BufNewFile *.jade set filetype=jade
autocmd Filetype jade set tabstop=2|set shiftwidth=2|set expandtab


" Rのプラグイン用
let vimrplugin_screenplugin = 1
let g:ScreenImpl = 'Tmux'
let vimrplugin_conquevsplit = 1
let vimrplugin_vimpager = "vertical"

source ~/dotfiles/.vimrc.neobundle
"

" github にないプラグイン

" ファイル形式検出、プラグイン、インデントを ON
filetype plugin indent on 

colorscheme dante
map <CR> i<CR><Esc>

function! Increment(num)
    :%s/[0-9]\+/\=submatch(0)+ a:num/g
endfunction

function! SetPython()
    autocmd FileType python setl autoindent
    autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
    autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4
endfunction

source ~/dotfiles/.vimrc.unite
source ~/dotfiles/.vimrc.color
source ~/dotfiles/.vimrc.keybinding


