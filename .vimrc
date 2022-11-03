" Configure Vim Plug
call plug#begin('~/.vim/plugged')

" install dogrun colorscheme
Plug 'wadackel/vim-dogrun'

" install Ariake-Dark colorscheme
Plug 'davidcelis/vim-ariake-dark'

" install vim polyglot syntax highlighting
Plug 'sheerun/vim-polyglot'

" install vim-javascript syntax highlighting
"Plug 'pangloss/vim-javascript'

" install vim-jsx-pretty syntax highlighting
" https://github.com/MaxMEllon/vim-jsx-pretty
"Plug 'maxmellon/vim-jsx-pretty'

" install ALE for linting
Plug 'dense-analysis/ale'

call plug#end()

"syntax on
"let g:vim_jsx_pretty_colorful_config = 1 " default 0

" Set colorscheme
colorscheme Ariake-Dark

" Turn on line numbers
:set number

let g:ale_sign_error = '🚨'
let g:ale_sign_warning = '⚠️'
