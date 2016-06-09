set number laststatus=2 hlsearch t_Co=256 cursorline colorcolumn=80

filetype plugin indent on
syntax on

"colorscheme molokai
set background=light
colorscheme solarized


let g:NERDTreeDirArrows=0
map <C-p> <ESC>:NERDTreeToggle<CR>


" Spelling
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

" Toggle spelling with the F7 key
map <F7> :setlocal spell! spelllang=en_us<CR>
