autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
highlight ColorColumn ctermbg=gray

syntax enable
set smartindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set nu
set runtimepath^=~/.vim/bundle/ctrlp.vim
set colorcolumn=80
set hlsearch
set splitbelow
set splitright
colorscheme atom-dark-256

noremap <c-k> :m -2<CR>
noremap <c-j> :m +1<CR>
noremap <c-l> :bn<CR>
noremap <c-h> :bp<CR>
noremap <c-b> :bd<CR>

let g:cpp_member_variable_highlight = 1
let g:cpp_class_decl_highlight = 1

match ExtraWhitespace /\s\+$\|^$\n\n\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$\|^$\n\n\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$\|^$\n\n\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$\|^$\n\n\+$/
autocmd BufWinLeave * call clearmatches()
