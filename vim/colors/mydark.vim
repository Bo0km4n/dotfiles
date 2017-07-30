" Vim color file
set background=dark

if &t_Co==256 || has('gui_running')
  " runtime colors/murphy.vim
  runtime colors/darkblue.vim
  " runtime colors/hybrid.vim
else
  " runtime colors/murphy.vim
  runtime colors/darkblue.vim
endif

" mydark {{{1

" GVim {{{1
" hi Normal     guifg=#a0a0a0 guibg=#161838
" hi Normal     guibg=#161838
hi link NonText Normal
hi Title gui=NONE

hi Comment guifg=SteelBlue
hi LineNr  guifg=DarkGreen
hi SpecialKey guifg=DarkGray

hi StatusLine   guifg=Blue  guibg=DarkGray gui=NONE
hi StatusLineNC guifg=Black guibg=DarkGray gui=NONE

hi Pmenu      guibg=#606060
hi PmenuSel   guibg=SlateBlue
hi PmenuSbar  guibg=#404040
hi PmenuThumb guifg=#606060

hi CursorIM   guifg=NONE guibg=Red
hi CursorLine guifg=NONE guibg=#505050 gui=NONE

hi ZenkakuSpace gui=UNDERLINE guifg=#404040

" Vim {{{1
hi Normal       ctermfg=white
hi LineNr       ctermfg=Brown
hi StatusLine   ctermfg=black ctermbg=gray term=none cterm=none
hi StatusLineNC ctermfg=black ctermbg=gray term=none cterm=none

hi PmenuSel    ctermbg=LightBlue
hi Pmenu       ctermbg=8
hi PmenuSbar   ctermbg=0
hi PmenuThumb  ctermfg=8

hi CursorLine ctermbg=59
hi Visual ctermbg=59
" 　　　　　
hi ZenkakuSpace cterm=UNDERLINE ctermfg=244 term=UNDERLINE

" android {{{2
if exists("$ANDROID_DATA")
  hi htmlItalic              ctermbg=237
  hi htmlBoldItalic          ctermbg=237 cterm=BOLD
  hi htmlUnderlineItalic     ctermbg=237 cterm=UNDERLINE
  hi htmlBoldUnderlineItalic ctermbg=237 cterm=BOLD,UNDERLINE
endif

let colors_name = "mydark"
" vim600:foldmethod=marker
