set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()


Plugin 'gmarik/vundle'
Plugin 'raimondi/delimitmate'
Plugin 'alvan/vim-closetag'
Plugin 'ivan-krukov/vim-snakemake'
Plugin 'junegunn/goyo.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'morhetz/gruvbox'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-surround'
Plugin 'itchyny/lightline.vim' 
Plugin 'ycm-core/YouCompleteMe'
" Track the engine.
Plugin 'SirVer/ultisnips'
Plugin 'Jome0169/vim-snippets'
Plugin 'jalvesaq/Nvim-R'



call vundle#end()            " required
filetype plugin indent on    " required


let g:UltiSnipsExpandTrigger='<c-b>' 
let g:UltiSnipsJumpForwardTrigger='<c-b>'
let g:UltiSnipsJumpBackwardTrigger='<c-k>'

let g:ycm_key_list_select_completion =["<tab>"]
let g:ycm_key_list_previous_completion = ["<s-tab>"]

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
hi Visual ctermfg=16 ctermbg=67



let g:tex_flavor='latex'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_CompileRule_pdf = 'latexmk -pdf -pvc $*'
let g:hybrid_custom_term_colors = 1


syntax on
set number
set wildmenu
set showcmd
set hlsearch
set statusline+=%F
set laststatus=2
set tw=79
set backspace=2
set incsearch

" ---- Minimal configuration:
set smartindent   " Do smart autoindenting when starting a new line
set shiftwidth=4  " Set number of spaces per auto indentation
set expandtab     " When using <Tab>, put spaces instead of a <tab> character

" ---- Good to have for consistency
 set tabstop=4   " Number of spaces that a <Tab> in the file counts for
 set smarttab    " At <Tab> at beginning line inserts spaces set in shiftwidth

" ---- Bonus for proving the setting
" Displays '-' for trailing space, '>-' for tabs and '_' for non breakable space
set listchars=tab:>-,trail:-,nbsp:_
set list

au BufNewFile,BufRead Snakefile set syntax=snakemake
au BufNewFile,BufRead *.rules set syntax=snakemake
au BufNewFile,BufRead *.snakefile set syntax=snakemake
au BufNewFile,BufRead *.snake set syntax=snakemake
au BufNewFile,BufRead *.smk set syntax=snakemake


if (has("termguicolors"))
  set termguicolors
endif

set background=dark
colorscheme gruvbox 
let g:lightline = { 'colorscheme': 'gruvbox' }

let g:palenight_terminal_italics=1
let g:airline_theme = "palenight"
set ttimeoutlen=50




let g:UltiSnipsSnippetDirectories=["UltiSnips", "vim-snippets"]
