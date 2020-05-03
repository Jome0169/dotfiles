set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#rc()


Plugin 'gmarik/vundle'
Plugin 'Valloric/YouCompleteMe'
Plugin 'raimondi/delimitmate'
Plugin 'alvan/vim-closetag'
Plugin 'reedes/vim-pencil'
Plugin 'ivan-krukov/vim-snakemake'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'junegunn/goyo.vim'
Plugin 'Yggdroot/indentLine'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'lervag/vimtex'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vimwiki/vimwiki'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'michal-h21/vim-zettel'
Plugin 'tpope/vim-surround'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'itchyny/lightline.vim'



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
colorscheme palenight
let g:lightline = { 'colorscheme': 'palenight' }

let g:palenight_terminal_italics=1
let g:airline_theme = "palenight"
set ttimeoutlen=50




let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}
let g:vimwiki_list = [{'path':'~/scratchbox/vimwiki/markdown/','ext':'.md','syntax':'markdown', 'zettel_template': "~/mytemplate.tpl"}, {"path":"~/scratchbox/vimwiki/wiki/"}]

" Filename format. The filename is created using strftime() function
let g:zettel_format = "%y%m%d-%H%M"
" command used for VimwikiSearch 
" possible values: "ag", "rg", "grep"
let g:zettel_fzf_command = "grep"
" Disable default keymappings
let g:zettel_default_mappings = 0 
" This is basically the same as the default configuration
augroup filetype_vimwiki
  autocmd!
  autocmd FileType vimwiki imap <silent> [[ [[<esc><Plug>ZettelSearchMap
  autocmd FileType vimwiki nmap T <Plug>ZettelYankNameMap
  autocmd FileType vimwiki xmap z <Plug>ZettelNewSelectedMap
  autocmd FileType vimwiki nmap gZ <Plug>ZettelReplaceFileWithLink
augroup END

" Set template and custom header variable for the second Wiki
let g:zettel_options = [{},{"front_matter" : {"tags" : ""}, "template" :  "~/mytemplate.tpl"}]

