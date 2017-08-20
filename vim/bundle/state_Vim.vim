if g:dein#_cache_version != 100 | throw 'Cache loading error' | endif
let [plugins, ftplugin] = dein#load_cache_raw(['/Users/bo0km4n/.vimrc'])
if empty(plugins) | throw 'Cache loading error' | endif
let g:dein#_plugins = plugins
let g:dein#_ftplugin = ftplugin
let g:dein#_base_path = '/Users/bo0km4n/.vim/bundle'
let g:dein#_runtime_path = '/Users/bo0km4n/.vim/bundle/.cache/.vimrc/.dein'
let g:dein#_cache_path = '/Users/bo0km4n/.vim/bundle/.cache/.vimrc'
let &runtimepath = '/Users/bo0km4n/.vim,/Users/bo0km4n/.vim/bundle/repos/github.com/Shougo/vimproc.vim,/Users/bo0km4n/.vim/bundle/repos/github.com/Shougo/dein.vim,/Users/bo0km4n/.vim/bundle/.cache/.vimrc/.dein,/Applications/MacVim.app/Contents/Resources/vim/vimfiles,/Applications/MacVim.app/Contents/Resources/vim/runtime,/Users/bo0km4n/.vim/bundle/.cache/.vimrc/.dein/after,/Applications/MacVim.app/Contents/Resources/vim/vimfiles/after,/Users/bo0km4n/.vim/after,/Applications/MacVim.app/Contents/Resources/vim/plugins/autofmt,/Applications/MacVim.app/Contents/Resources/vim/plugins/golang,/Applications/MacVim.app/Contents/Resources/vim/plugins/kaoriya,/Applications/MacVim.app/Contents/Resources/vim/plugins/vimdoc-ja'
filetype off
