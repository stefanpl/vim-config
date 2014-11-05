set number  
set ignorecase
set smartcase
set incsearch
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
syntax enable
colorscheme ir_black
"enable transparent background
hi Normal ctermbg=NONE
" size of tab hardstop
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab
" use pathogen for runtimepath handling
execute pathogen#infect()
" activate filetype indenting and plugins
filetype plugin indent on
" activate autocomplete plugin
let g:neocomplete#enable_at_startup = 1
" remap emmet trigger shortkey (need to press , afterwards); 
let g:user_emmet_leader_key='<C-K>'
