call plug#begin()
" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" airline
Plug 'vim-airline/vim-airline'     " vim status bar

" git
Plug 'airblade/vim-gitgutter'      " git change status
Plug 'tpope/vim-fugitive'          " vim git wrapper

" tree
Plug 'scrooloose/nerdtree'         " tree plugin for vim
Plug 'Xuyuanp/nerdtree-git-plugin' " nerd tree git plugin

" search
Plug 'ctrlpvim/ctrlp.vim'          " ctrl p search

" auto pair
Plug 'jiangmiao/auto-pairs'        " pairs quotes or braket

" dev icon
Plug 'ryanoasis/vim-devicons'      " dev icons for vim

" tagbar
Plug 'majutsushi/tagbar'           " browse tag plugin

" ale linter
Plug 'w0rp/ale'

" markdown preview
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" javascript
Plug 'pangloss/vim-javascript'

" typescript
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'

" indent
Plug 'Yggdroot/indentLine'

" smooth scroll
Plug 'terryma/vim-smooth-scroll'

" multi cursor
Plug 'terryma/vim-multiple-cursors'

" coc.nvim
Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}

" vim surround
Plug 'tpope/vim-surround'

" vim theme
Plug 'navarasu/onedark.nvim'

" google
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

" wakatime
Plug 'wakatime/vim-wakatime'

call plug#end()

" Vim Config
set number
set ai
set si
set shiftwidth=2
set tabstop=2
set ignorecase
set hlsearch
set expandtab

"" NERD Tree Config
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"" Command+K NERD Tree Toggle
map <C-k> :NERDTreeToggle<CR>

" hidden file show tree
let NERDTreeShowHidden=1

"" Ctrl p ignore list
let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$\|public$\|log$\|tmp$\|vendor$\|node_modules$',
\ 'file': '\v\.(exe|so|dll)$'
\ }


set encoding=UTF-8

"" Indentation rules
augroup vimrc-javascript
  autocmd!
  autocmd FileType html set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType css set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType javascript set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType typescript set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType jsx set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType tsx set tabstop=2|set shiftwidth=2|set expandtab softtabstop=2 smartindent
  autocmd FileType c,cpp,proto AutoFormatBuffer clang-format
augroup END

"" Git
noremap <Leader>gs :Gstatus<CR>
noremap <Leader>ga :Gwrite<CR>
noremap <Leader>gc :Gcommit<CR>
noremap <Leader>gsh :Gpush<CR>
noremap <Leader>gb :Gblame<CR>
noremap <Leader>gr :Gremove<CR>
noremap <Leader>gll :Gpull<CR>
noremap <Leader>gd :Gvdiff<CR>

"" ale linters
let b:ale_linters = {
 \ 'javascript': ['eslint'],
 \ 'typescript': ['eslint']
 \}

let g:ale_javascript_eslint_use_global = 1
let g:ale_javascript_eslint_executable = 'eslint_d'

"" ale fixers
let b:ale_fixers = {
\ '*': ['remove_trailing_lines', 'trim_whitespace'],
\ 'javascript': ['eslint'],
\ 'tsx': ['eslint'],
\ 'typescript': ['eslint']
\}

let g:ale_fix_on_save = 1

autocmd BufWritePost *.ts,*.tsx,*.js,*.jsx,*.scss ALEFix eslint

" indent line
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

" Or if you have Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif


" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme
syntax enable
let g:onedark_config = {
    \ 'style': 'deep',
\}
colorscheme onedark
