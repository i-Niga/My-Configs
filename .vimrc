call plug#begin()

Plug 'jiangmiao/auto-pairs'
Plug 'bluz71/vim-moonfly-colors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'airblade/vim-gitgutter'

call plug#end()

colorscheme moonfly
hi Normal guibg=NONE ctermbg=NONE

set number relativenumber
set ruler

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:·
set list

nmap о j
nmap л k
nmap р h
nmap д l
nmap ш i
nmap ф a
nmap в d
