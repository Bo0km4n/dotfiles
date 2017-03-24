"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" シンタックスハイライト
syntax on
set mouse=a
colorscheme molokai
set number
set guifont=MS_Gothic:h7
set guifontwide=MS_Gothic:h7
"()complete
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
" \"complete
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
" タブを表示するときの幅
 set tabstop=4
" タブを挿入するときの幅
 set shiftwidth=4
"  タブをタブとして扱う(スペースに展開しない)
 set noexpandtab 
 set softtabstop=0

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

