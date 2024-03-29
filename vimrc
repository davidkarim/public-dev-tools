These are my vim settings. To set them; tail this file and redirect to:
$HOME/.vimrc
Tail minus this 4-line header; so complete command: tail -n $(( $(wc -l < vimrc)-4 )) vimrc > $HOME/.vimrc

set ai                  " auto indenting
set ruler               " show the cursor position
syntax on               " syntax highlighting
set hlsearch            " highlight the last searched term
filetype plugin on      " use the file type plugins
filetype indent on      " Auto-indent based on language
set shiftwidth=2        " Indent 2 characters
set softtabstop=2       " Tab key in insert can insert tab or space
set tabstop=8           " Number of spaces for tab character
set expandtab           " Tab key in insert mode inserts spaces
set ignorecase          " Ignore case when searching
set hlsearch            " highlight search terms
set incsearch           " show search matches as you type
set title               " change the terminal title

" <Ctrl-l> redraws the screen and removes any search highlighting.
nnoremap <silent> <C-l> :nohl<CR><C-l>

" NerDTree Mappings
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Use \b to list available buffers and switch to one of them:
nnoremap <Leader>b :ls<CR>:b<Space>

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Shortcutting split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
