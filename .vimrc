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
set tabstop=4 "タブ文字数を4にする
set cursorline
let g:BASH_Ctrl_j = 'off'
highlight ZenkakuSpace cterm=underline ctermfg=lightblue guibg=darkgray
match ZenkakuSpace /　/" 全角スペースの表示
let g:neocomplcache_enable_at_startup = 1

" vi との互換性OFF
set nocompatible
" ファイル形式の検出を無効にする
filetype off

" Vundle を初期化して
" Vundle 自身も Vundle で管理
set rtp+=~/.vim/bundle/vundle.git/
call vundle#rc()
Bundle 'gmarik/vundle'

" github にあるプラグイン
Bundle "Shougo/neocomplcache.git"
Bundle "Shougo/neobundle.vim.git"
Bundle "jceb/vim-hier"
Bundle "Shougo/unite.vim"
Bundle "h1mesuke/unite-outline"
"Bundle "Rip-Rip/clang_complete"
Bundle "tpope/vim-vividchalk"

" vim-scripts プラグイン
Bundle "SingleCompile"
Bundle "opsplorer"
Bundle "c.vim"

" github にないプラグイン

" ファイル形式検出、プラグイン、インデントを ON
filetype plugin indent on 

colorscheme vividchalk
map! <C-G> <Esc>
map <C-G> <Esc>
map <CR> i<CR><Esc>

function! ChangeColor(index)
		if a:index==0
				colorscheme desert
		elseif a:index==1
				colorscheme vividchalk
		else 
				colorscheme default
		endif
endfunction
map <F1> :call ChangeColor(0)<Enter>
map <F2> :call ChangeColor(1)<Enter>
map <F3> :call ChangeColor(2)<Enter>
map <C-H> 8h
map <C-J> 8<Down> 
map <C-K> 8k
map <C-L> 8l
