"          vundle configuration
set nocompatible
filetype off
source ~/.vimrc.plugins

"          vundle configuration
"
"          Basic configure
syntax on
filetype plugin indent on
set t_Co=256
set lines=87 columns=107
set directory=~/.vim/tmp/swap
set backupdir=~/.vim/tmp/backup
set background=dark
color gruvbox

let mapleader = ","
set mouse=a
set statusline=%F\ %m\ %{fugitive#statusline()}\ %y%=%l,%c\ %P
set laststatus=2
set wildignore=*.swp,*.bak,*.pyc,*.pyo,*.class,*.tmp,*~
set number
set list

"          Basic configure

"          Text distribution
set ai
set si
set wrap
set autoindent
set tabstop=2
set shiftwidth=2
set smartindent

"          Text distribution

set showcmd
set cursorcolumn cursorline
set history=1000
set backspace=eol,start,indent

"          Seach

set ignorecase
set smartcase
set hlsearch
set incsearch
set expandtab
set listchars=tab:>.,trail:.,extends:#
set foldmethod=syntax
set foldlevel=1

"          Seach

map <leader>j :FZF<CR>

set pastetoggle=<leader>p
noremap <leader>m :call <SID>ToggleMouse()<CR>
inoremap <leader>m <Esc>:call <SID>ToggleMouse()<CR>a

if &diff
  map <leader>1 :diffget LOCAL<CR>
  map <leader>2 :diffget BASE<CR>
  map <leader>3 :diffget REMOTE<CR>
endif

"          Metods

fun! s:ToggleMouse()
    if !exists("s:old_mouse")
        let s:old_mouse = "a"
    endif

    if &mouse == ""
        let &mouse = s:old_mouse
        set number
        echo "Mouse is for Vim (" . &mouse . ")"
    else
        let s:old_mouse = &mouse
        let &mouse=""
        set nonumber
        echo "Mouse is for terminal"
    endif
endfunction

"          Metods
