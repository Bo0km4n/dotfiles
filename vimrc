"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif
:set noswapfile
" シンタックスハイライト
syntax on
set mouse=a
""colorscheme apprentice
colorscheme molokai
set clipboard=unnamed,autoselect
set number
set guifont=MS_Gothic:h7
set guifontwide=MS_Gothic:h7
set backspace=indent,eol,start
set tags=./tags
set re=0
autocmd vimenter * NERDTree

"()complete
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
" \"complete
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
nnoremap <C-n> :NERDTree
" タブを表示するときの幅
 set tabstop=4
" タブを挿入するときの幅
 set shiftwidth=4
 set expandtab
 set smarttab 
 set softtabstop=0
" jjでエスケープ 
 inoremap <silent> jj <ESC>
 inoremap <silent> \^- <ESC>:w<CR>
 inoremap <silent> -^\ <ESC>:wq<CR>
 noremap <S-h> 0
 noremap <S-l> $
" Ctrl+k Ctrl+h で呼び出し関数へジャンプ
"nnoremap <C-h> :vsp<CR> :exe("tjump ".expand('<cword>'))<CR>
" nnoremap <C-k> :tabnew<CR> :exe("tjump ".expand('<cword>'))<CR>
"nnoremap <C-k> :<C-u>tab stj <C-R>=expand('<cword>')<CR><CR>

" Required:
set runtimepath^=/Users/Katsuya/.vim/bundle/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('/Users/Katsuya/.vim/bundle'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
	call dein#add('Shougo/neosnippet.vim')
	call dein#add('Shougo/neosnippet-snippets')
	call dein#add('Shougo/neocomplete.vim')
	call dein#add('locona/dotfiles')
	call dein#add('flazz/vim-colorschemes')
	call dein#add('Shougo/unite.vim')
	call dein#add('ujihisa/unite-colorscheme')
	call dein#add('KazuakiM/neosnippet-snippets')
	call dein#add('KazuakiM/vim-qfstatusline')
	call dein#add('mojako/ref-sources.vim')
	call dein#add('pangloss/vim-javascript')
	call dein#add('Shougo/neoinclude.vim')
	call dein#add('Shougo/vimproc.vim',{'build':'make'})
	call dein#add('thinca/vim-quickrun')
    call dein#add('thinca/vim-ref')
    call dein#add('vim-scripts/taglist.vim')
    call dein#add('osyo-manga/shabadou.vim')
    call dein#add('osyo-manga/vim-watchdogs')
    call dein#add('mustardamus/jqapi', {'lazy':1})
    call dein#add('tokuhirom/jsref',   {'lazy':1})
	call dein#add('fatih/vim-go')
	call dein#add('mattn/webapi-vim')
	call dein#add('mattn/gist-vim', {'depends': 'mattn/webapi-vim'})
	call dein#add('davidhalter/jedi-vim')
	call dein#add('thinca/vim-quickrun')
	call dein#add('Shougo/vimproc')
	call dein#add('simeji/winresizer')
" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

call dein#add('scrooloose/nerdtree')


map <C-n> :NERDTreeToggle<CR>
"=== vim search status
call dein#add('osyo-manga/vim-anzu')
" Required:
call dein#end()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

set spelllang=en,cjk

fun! s:SpellConf()
  redir! => syntax
  silent syntax
  redir END

  set spell

  if syntax =~? '/<comment\>'
    syntax spell default
    syntax match SpellMaybeCode /\<\h\l*[_A-Z]\h\{-}\>/ contains=@NoSpell transparent containedin=Comment contained
  else
    syntax spell toplevel
    syntax match SpellMaybeCode /\<\h\l*[_A-Z]\h\{-}\>/ contains=@NoSpell transparent
  endif

  syntax cluster Spell add=SpellNotAscii,SpellMaybeCode
endfunc

augroup spell_check
  autocmd!
  autocmd BufReadPost,BufNewFile,Syntax * call s:SpellConf()
augroup END

nnoremap ,n :NERDTree .<CR>
set tags=./tags;
