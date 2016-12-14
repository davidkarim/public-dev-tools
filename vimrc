These are my vim settings. To set them; tail this file and redirect to:
$HOME/.vimrc
Tail minus this 4-line header; so complete command: tail -n $(( $(wc -l < vimrc)-4 )) vimrc > $HOME/.vimrc

set ai                  " auto indenting
set ruler               " show the cursor position
syntax on               " syntax highlighting
set hlsearch            " highlight the last searched term
filetype plugin on      " use the file type plugins
set shiftwidth=2        " Indent 2 characters
set softtabstop=2       " Tab key in insert can insert tab or space
set tabstop=8           " Number of spaces for tab character
set expandtab           " Tab key in insert mode inserts spaces
