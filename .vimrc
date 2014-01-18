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

" Rのプラグイン用
let vimrplugin_screenplugin = 1
let g:ScreenImpl = 'Tmux'
let vimrplugin_conquevsplit = 1
let vimrplugin_vimpager = "vertical"

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
Bundle "thinca/vim-quickrun.git"
"Bundle "Rip-Rip/clang_complete"
"Bundle "tpope/vim-vividchalk"
Bundle "flazz/vim-colorschemes.git"
"Bundle "cburroughs/pep8.py.git"
Bundle "mattboehm/vim-accordion.git"
Bundle "triglav/vim-visual-increment.git"
Bundle "tomtom/tcomment_vim.git"
Bundle "ervandew/screen.git"
Bundle "mbbill/undotree"
Bundle "troydm/easybuffer.vim"
"Bundle "vim-scripts/DirDo.vim"
"Bundle "AndrewRadev/switch.vim"
"Bundle "triglav/vim-visual-increment.git"
Bundle "mattn/emmet-vim"

" vim-scripts プラグイン
Bundle "SingleCompile"
Bundle "opsplorer"
Bundle "Vim-R-plugin"
"Bundle "speeddating.vim"

"Bundle "YankRing.vim"
"Bundle "c.vim"

" github にないプラグイン

" ファイル形式検出、プラグイン、インデントを ON
filetype plugin indent on 

colorscheme dante
map <CR> i<CR><Esc>

function! ChangeColor(index)
    if a:index==0
        colorscheme desert
    elseif a:index==1
        colorscheme inkpot 
    elseif a:index==2 
        colorscheme desert256
    elseif a:index==3
        colorscheme dante
    elseif a:index==4
        colorscheme MountainDew
    elseif a:index==5
        colorscheme southernlights
    elseif a:index==6
        colorscheme coffee
    elseif a:index==7
        colorscheme jellybeans
    elseif a:index==8
        colorscheme slate
    else
    endif
endfunction

function! Increment(num)
    :%s/[0-9]\+/\=submatch(0)+ a:num/g
endfunction

function! SetPython()
    autocmd FileType python setl autoindent
    autocmd FileType python setl smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
    autocmd FileType python setl tabstop=8 expandtab shiftwidth=4 softtabstop=4
endfunction

noremap <F1> :call ChangeColor(0)<Enter>
noremap <F2> :call ChangeColor(1)<Enter>
noremap <F3> :call ChangeColor(2)<Enter>
noremap <F4> :call ChangeColor(3)<Enter>
noremap <F5> :call ChangeColor(4)<Enter>
noremap <F6> :call ChangeColor(5)<Enter>
noremap <F7> :call ChangeColor(6)<Enter>
noremap <F8> :call ChangeColor(7)<Enter>
noremap <F9> :call ChangeColor(8)<Enter>

noremap <C-H> 8h
noremap <C-J> 8j
noremap <C-K> 8k
noremap <C-L> 8l

nnoremap <Right> <Nop>
nnoremap <Left> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>

noremap <C-]> :tabn<CR>

source ~/dotfiles/.vimrc.unite
