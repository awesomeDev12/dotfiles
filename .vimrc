set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'


" Track the engine.
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

Plugin 'dense-analysis/ale'
Plugin 'preservim/nerdtree'
"Plugin 'neoclide/coc.nvim', {'branch': 'release'}
"
Plugin 'mattn/emmet-vim'
Plugin 'prettier/vim-prettier'
Plugin 'Yggdroot/indentLine'

Plugin 'yuezk/vim-js'
Plugin 'maxmellon/vim-jsx-pretty'


Plugin 'vim-scripts/Auto-Pairs'

Plugin 'tpope/vim-commentary'
" Code completion
"Plugin 'neoclide/coc.nvim', {'branch': 'release'}
"Plugin 'sbdchd/neoformat'
"Plugin 'sbdchd/neoformat'
"Plugin 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' }
"Plugin 'yuezk/vim-js'
"Plugin 'maxmellon/vim-jsx-pretty'
"Plugin 'sbdchd/neoformat'
"Plugin 'ycm-core/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" ALE linter
" for ale linter key binding to move to next error using Ctrl + e
"nmap <silent> <C-e> <Plug>(ale_next_wrap)
nnoremap <c-e> <Plug>(ale_next_wrap) 
inoremap <c-e> <Esc> <Plug>(ale_next_wrap) 
vnoremap <c-e> <Esc> <Plug>(ale_next_wrap)

" NerdTree config

" Open by default
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists(“s:std_in”) | NERDTree | endif
" Finding the right file
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
" Closing automatically
let NERDTreeQuitOnOpen = 1
" Exit Vim if NERDTree is the only window remaining in the only tab.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') &&
" b:NERDTree.isTabTree() | quit | endif

" Deleting files
let NERDTreeAutoDeleteBuffer = 1
" Making it prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1



" MY COMMANDS and KEYMAP when vim opens
" Ctrl + S
nnoremap <c-s> :w<CR> " normal mode: save
inoremap <c-s> <Esc>:w<CR> " insert mode: escape to normal and save
vnoremap <c-s> <Esc>:w<CR> " visual mode: escape to normal and save
" Ctrl + W
nnoremap <c-q> :qa!<CR> " normal mode: exit
inoremap <c-q> <Esc>:qa!<CR> " insert mode: escape to normal and save
vnoremap <c-q> <Esc>:qa!<CR> " visual mode: escape to normal and save
" Change buffers
nnoremap <C-A> <c-w>w
inoremap <C-A> <Esc> <c-w>w
vnoremap <C-A> <Esc> <c-w>w
" nnoremap <C-K> <c-w>w
" nnoremap <C-J> <c-w>W

" Compile C++ files
function! CppRun()

nnoremap <F5> :! g++ -g % && ./a.out <CR> " normal mode: save
inoremap <F5> <Esc>:! g++ -g % && ./a.out <CR> " insert mode: escape to normal and save
vnoremap <F5> <Esc>:! g++ -g % && ./a.out <CR> " visual mode: escape to normal and save

nnoremap <F6> :! g++ -g % && ./a.out ; echo "" ; read gold<CR> " normal mode: save
inoremap <F6> <Esc>:! g++ -g % && ./a.out ; echo "" ; read gold<CR> " insert mode: escape to normal and save
vnoremap <F6> <Esc>:! g++ -g % && ./a.out ; echo "" ; read gold<CR> " visual mode: escape to normal and save

nnoremap <F7> :! g++ -g % && gdb -q -tui a.out <CR> " normal mode: save
inoremap <F7> <Esc>:! g++ -g % && gdb -q -tui a.out <CR> " insert mode: escape to normal and save
vnoremap <F7> <Esc>:! g++ -g % && gdb -q -tui a.out <CR> " visual mode: escape to normal and save

endfunction

" Compile C files
function! CRun()

nnoremap <F5> :! gcc -g % && ./a.out <CR> " normal mode: save
inoremap <F5> <Esc>:! gcc -g % && ./a.out <CR> " insert mode: escape to normal and save
vnoremap <F5> <Esc>:! gcc -g % && ./a.out <CR> " visual mode: escape to normal and save

nnoremap <F6> :! gcc -g % && ./a.out ; echo "" ; read gold<CR> " normal mode: save
inoremap <F6> <Esc>:! gcc -g % && ./a.out ; echo "" ; read gold<CR> " insert mode: escape to normal and save
vnoremap <F6> <Esc>:! gcc -g % && ./a.out ; echo "" ; read gold<CR> " visual mode: escape to normal and save

nnoremap <F7> :! gcc -g % && gdb -q -tui a.out <CR> " normal mode: save
inoremap <F7> <Esc>:! gcc -g % && gdb -q -tui a.out <CR> " insert mode: escape to normal and save
vnoremap <F7> <Esc>:! gcc -g % && gdb -q -tui a.out <CR> " visual mode: escape to normal and save

endfunction


"nnoremap <C-B> :%!astyle --mode=c --style=ansi -s2 <CR> " normal mode: save
"inoremap <C-B> <Esc>:%!astyle --mode=c --style=ansi -s2<CR> " insert mode: escape to normal and save
"vnoremap <C-B> <Esc>:!%!astyle --mode=c --style=ansi -s2 <CR> " visual mode: escape to normal and save


function! NodeRun()
nnoremap <F5> :! node % ; echo "" ; read gold <CR> 
" normal mode: save
inoremap <F5> <Esc>:! node % ; echo "" ; read gold <CR>
" insert mode: escape to normal and save
vnoremap <F5> <Esc>:! node % ; echo "" ; read gold <CR> 
" visual mode: escape to normal and save
endfunction


"autocmd FileType javascipt call NodeRun()
autocmd BufNewFile,BufRead *.js call NodeRun()

" set status bar
highlight StatuslineFilename ctermfg=Black ctermbg=DarkGreen
highlight StatuslineModified ctermfg=DarkMagenta ctermbg=LightGreen
highlight StatuslineNumbers ctermfg=Black ctermbg=DarkYellow

set statusline=%#StatuslineFilename#   " Set color for file path
set statusline+=%F                     " Full file path, at most 40 characters
set statusline+=\                      " A space
set statusline+=%#StatuslineModified#  " Set color for modified flag
set statusline+=%m                     " Modified flag
set statusline+=%#StatuslineFilename#  " Set color for the rest of the bar
set statusline+=%=                     " Split the left and right sides
set statusline+=%#StatuslineNumbers#   " Set color for line numbers
set statusline+=%l,                    " Line number
set statusline+=\                      " A space
set statusline+=%-3c                    " Column number
set statusline+=%L                     " Total number of lines
set statusline+=\ \|\                  " A separator
" status line position
set laststatus=2
" Linter status bar
function! LinterStatus() abort
    let l:counts = ale#statusline#Count(bufnr('')) 
    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors
    return l:counts.total == 0 ? 'OK' : printf(
       \   '%d⨉ %d⚠ ',
       \   all_non_errors,
       \   all_errors
       \)
endfunction
set statusline+=%=
set statusline+=\ %{LinterStatus()}


" filetypes
" Treat all .md files as markdown
autocmd BufNewFile,BufRead *.md set filetype=markdown
" Highlight the line the cursor is on
autocmd FileType markdown set cursorline
" Hide and format markdown elements like **bold**
autocmd FileType markdown set conceallevel=2
" Set spell check to British English
"autocmd FileType markdown setlocal spell spelllang=en_us
" Configuration for vim-markdown
let g:vim_markdown_conceal = 2
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_math = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'tab'
let g:vim_markdown_follow_anchor = 1
" Have lines wrap instead of continue off-screen
set linebreak

" Gives Vim access to a broader range of colours
set termguicolors

" Keep cursor in approximately the middle of the screen
set scrolloff=12

"Ale
"let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_text_changed = 1
let g:ale_lint_on_insert_leave = 0
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

" Ale prettier 
"let g:ale_linters = {
"\   'markdown':      ['mdl'],
"\}

"let g:ale_linters = {
"\   'markdown':      ['mdl', 'writegood'],
"\}


"let g:ale_fixers = {
"\   '*':          ['remove_trailing_lines', 'trim_whitespace'],
"\}

"let g:ale_fixers = {
"\   'javascript': ['prettier'],
"\   'css': ['prettier'],
"\   'md': ['prettier'],
"\}


let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

"only enable normal mode functions.
"let g:user_emmet_mode='i' 

"search highlight
"set hlsearch

"Prettier
"PrettierAsync
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'

"Indent Line
"let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']



"Neoformat

"format on save
"autocmd BufWritePost * Neoformat %
"
"augroup fmt
"  autocmd!
"  autocmd BufWritePre * undojoin | Neoformat
"augroup END

" runs all formatters for current buffer without tab to spaces conversion
"    let b:neoformat_run_all_formatters = 1
"    let b:neoformat_basic_format_retab = 0
" Ale fixers
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\}

function! AstyleF()
   let line= line(".")
    %!astyle --mode=c --style=ansi -s4
   execute  printf('%d',line)
endfunction

"astyle
"autocmd BufNewFile,BufRead,BufWritePre *.cpp set formatprg=astyle\ --options="$HOME/.astylerc"\
"autocmd BufWritePost *.cpp  %!astyle --mode=c --style=ansi -s2 
"(ansi C++ style, use two spaces per indent level)
autocmd BufWritePost *.cpp call AstyleF() 
autocmd BufWritePost *.c call AstyleF() 
autocmd FileType cpp call CppRun()
autocmd FileType c call CRun()


"Vim Commentary
autocmd FileType apache setlocal commentstring=#\ %s
"autocmd *.cpp  apache setlocal commentstring=//\ %s


" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"Copy to Clipboard
vnoremap <C-y> "*y :let @+=@*<CR>
" https://duckduckgo.com/?t=ffab&q=copy+to+clipboard+vim&ia=web&iax=qa
" must have vim-gtk (aka gvim) installed 

" CoC
" GoTo code navigation.
" nmap <leader>gd <Plug>(coc-definition)
" nmap <leader>gy <Plug>(coc-type-definition)
" nmap <leader>gi <Plug>(coc-implementation)
" nmap <leader>gr <Plug>(coc-references)
" nmap <leader>rr <Plug>(coc-rename)
" nmap <leader>g[ <Plug>(coc-diagnostic-prev)
" nmap <leader>g] <Plug>(coc-diagnostic-next)
" nmap <silent> <leader>gp <Plug>(coc-diagnostic-prev-error)
" nmap <silent> <leader>gn <Plug>(coc-diagnostic-next-error)
" nnoremap <leader>cr :CocRestart

""" Customize colors
" func! s:my_colors_setup() abort
"     " this is an example
"     hi Pmenu guibg=#d7e5dc gui=NONE
"     hi PmenuSel guibg=#b7c7b7 gui=NONE
"     hi PmenuSbar guibg=#bcbcbc
"     hi PmenuThumb guibg=#585858
" endfunc
" 
" augroup colorscheme_coc_setup | au!
"     au ColorScheme * call s:my_colors_setup()
" augroup END


"To choose another background color you can use

":highlight CocFloating ctermbg=color
"highlight CocFloating ctermbg=White
"And to change the foreground (text) color of the error message use

":highlight CocErrorFloat ctermfg=color
"highlight CocErrorFloat ctermfg=Black

"where color is either a color name or a color number (generally from 0 to 15).
"To read more on color values
":h cterm-colors

" Search and replace hotkey
nnoremap H :%s//gc<left><left><left>

" Move highlighted text up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"Nerd tree set modifiable 
set ma
" vertical and horizontal split
set splitright
set splitbelow
set nu
" noswapfile
set noswapfile
set tabstop=4
set shiftwidth=4
set expandtab
syntax on



