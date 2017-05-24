set number  
set ignorecase
set smartcase
set incsearch
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
syntax enable
colorscheme dual
"enable transparent background
hi Normal ctermbg=NONE
" size of tab hardstop
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
" use pathogen for runtimepath handling
execute pathogen#infect()
" this automatically generates helptags for plugins
call pathogen#helptags()
" activate filetype indenting and plugins
filetype plugin indent on
" activate autocomplete plugin
let g:neocomplete#enable_at_startup = 1
" remap emmet trigger shortkey (need to press , afterwards); 
let g:user_emmet_leader_key='<C-K>'
" use this command to write a file which is opened without write-permission
cmap w!! w !sudo tee %
" set paths for backup, swp and undo files
set backupdir=~/.vim/backup//,/tmp//
set directory=~/.vim/swap//,/tmp//
set undodir=~/.vim/undo//,/tmp//

" set up paths for vdebug to work
let g:vdebug_options = {
\ 'path_maps': {"/var/www": "/home/stefan/webdev/bruce/bruce-cms"},
\ 'server': '0.0.0.0'
\}

"if this works, the anonymous register is replaced by system clipboard
"set clipboard=unnamedplus

" snippets magic
so ~/.vim/bundle/snipmate.vim/scope.aliases

" set mapleader key
let mapleader=","

" change nerdcommenter key
:nnoremap <C-i> :NERDComToggleComment<CR>
