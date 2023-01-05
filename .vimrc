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

"Plugin 'iamcco/mathjax-support-for-mkdp'
"Plugin 'iamcco/markdown-preview.vim'
" Code completion
"Plugin 'neoclide/coc.nvim', {'branch': 'release'}
"Plugin 'sbdchd/neoformat'
"Plugin 'prettier/vim-prettier', { 'do': 'npm install --frozen-lockfile --production' }
"Plugin 'yuezk/vim-js'
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
nnoremap <C-e> <Plug>(ale_next_wrap) 
inoremap <C-e> <Esc> <Plug>(ale_next_wrap) 
vnoremap <C-e> <Esc> <Plug>(ale_next_wrap)

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
nnoremap <c-s> :w<CR>
" normal mode: save
inoremap <c-s> <Esc>:w<CR>
" insert mode: escape to normal and save
vnoremap <c-s> <Esc>:w<CR>
" visual mode: escape to normal and save
" Ctrl + W
nnoremap <c-q> :qa!<CR>
" normal mode: exit
inoremap <c-q> <Esc>:qa!<CR>
" insert mode: escape to normal and save
vnoremap <c-q> <Esc>:qa!<CR>
" visual mode: escape to normal and save
" Change buffers
nnoremap <C-A> <c-w>w
inoremap <C-A> <Esc> <c-w>w
vnoremap <C-A> <Esc> <c-w>w
" nnoremap <C-K> <c-w>w
" nnoremap <C-J> <c-w>W

" Compile C++ files
function! CppRun()

nnoremap <F5> :! g++ -g % && ./a.out <CR> 
" normal mode: save
inoremap <F5> <Esc>:! g++ -g % && ./a.out <CR>
" insert mode: escape to normal and save
vnoremap <F5> <Esc>:! g++ -g % && ./a.out <CR>
" visual mode: escape to normal and save

nnoremap <F6> :! g++ -g % && ./a.out ; echo "" ; read gold<CR>
" normal mode: save
inoremap <F6> <Esc>:! g++ -g % && ./a.out ; echo "" ; read gold<CR> 
" insert mode: escape to normal and save
vnoremap <F6> <Esc>:! g++ -g % && ./a.out ; echo "" ; read gold<CR>
" visual mode: escape to normal and save

nnoremap <F7> :! g++ -g % && gdb -q -tui a.out <CR>
" normal mode: save
inoremap <F7> <Esc>:! g++ -g % && gdb -q -tui a.out <CR>
" insert mode: escape to normal and save
vnoremap <F7> <Esc>:! g++ -g % && gdb -q -tui a.out <CR> 
    " visual mode: escape to normal and save

endfunction

" Compile C files
function! CRun()

nnoremap <F5> :! gcc -g % && ./a.out <CR>
" normal mode: save
inoremap <F5> <Esc>:! gcc -g % && ./a.out <CR>
" insert mode: escape to normal and save
vnoremap <F5> <Esc>:! gcc -g % && ./a.out <CR>
" visual mode: escape to normal and save

nnoremap <F6> :! gcc -g % && ./a.out ; echo "" ; read gold<CR>
" normal mode: save
inoremap <F6> <Esc>:! gcc -g % && ./a.out ; echo "" ; read gold<CR>
" insert mode: escape to normal and save
vnoremap <F6> <Esc>:! gcc -g % && ./a.out ; echo "" ; read gold<CR> 
" visual mode: escape to normal and save

nnoremap <F7> :! gcc -g % && gdb -q -tui a.out <CR>
" normal mode: save
inoremap <F7> <Esc>:! gcc -g % && gdb -q -tui a.out <CR> 
" insert mode: escape to normal and save
vnoremap <F7> <Esc>:! gcc -g % && gdb -q -tui a.out <CR> 
" visual mode: escape to normal and save

endfunction

" Compile Java files
function! JavaRun()

nnoremap <F5> :! javac -g % && java '%:r'<CR>
" nnoremap <F5> :! mkdir -p build && javac -g % -d build/ && java './build/%:r'<CR>
" nnoremap <F5> :! mkdir -p build && javac -g % -d build/<CR>
" normal mode: save
inoremap <F5> <Esc>:! javac -g % && java '%:r'<CR>
vnoremap <F5> <Esc>:! javac -g % && java '%:r'<CR>


" nnoremap <F6> :! gcc -g % && ./a.out ; echo '' ; read gold<CR>
" normal mode: save
" inoremap <F6> <Esc>:! gcc -g % && ./a.out ; echo '' ; read gold<CR>
" insert mode: escape to normal and save
" vnoremap <F6> <Esc>:! gcc -g % && ./a.out ; echo '' ; read gold<CR> 
" visual mode: escape to normal and save
nnoremap <F7> :! javac -g % && jdb '%:r'<CR>
inoremap <F7> <Esc>:! javac -g % && jdb '%:r'<CR>
vnoremap <F7> <Esc>:! javac -g % && jdb '%:r'<CR>
" nnoremap <F7> :! gcc -g % && gdb -q -tui a.out <CR>
" normal mode: save
" inoremap <F7> <Esc>:! gcc -g % && gdb -q -tui a.out <CR> 
" insert mode: escape to normal and save
" vnoremap <F7> <Esc>:! gcc -g % && gdb -q -tui a.out <CR> 
" visual mode: escape to normal and save

endfunction

" Compile Java files
function! MarkdownRun()

nnoremap <F5> :! glow %<CR>
inoremap <F5> <Esc>:! glow %<CR>
vnoremap <F5> <Esc>:! glow %<CR>
endfunction


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
" set statusline+=\                      " A space
" set statusline+=%-3c                    " Column number
set statusline+=%c                    " Column number
set statusline+=\ \|\                  " A separator
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


"Mark down preview
"let g:mkdp_path_to_chrome = ""
" Path to the chrome or the command to open chrome (or other modern browsers).
" If set, g:mkdp_browserfunc would be ignored.

" let g:mkdp_browserfunc = 'MKDP_browserfunc_default'
" Callback Vim function to open browser, the only parameter is the url to open.

" let g:mkdp_auto_start = 0
" Set to 1, Vim will open the preview window on entering the Markdown
" buffer.

" let g:mkdp_auto_open = 0
" Set to 1, Vim will automatically open the preview window when you edit a
" Markdown file.

" let g:mkdp_auto_close = 1
" Set to 1, Vim will automatically close the current preview window when
" switching from one Markdown buffer to another.

" let g:mkdp_refresh_slow = 0
" Set to 1, Vim will just refresh Markdown when saving the buffer or
" leaving from insert mode. With default 0, it will automatically refresh
" Markdown as you edit or move the cursor.

" let g:mkdp_command_for_global = 0
" Set to 1, the MarkdownPreview command can be used for all files,
" by default it can only be used in Markdown files.

" let g:mkdp_open_to_the_world = 0
" Set to 1, the preview server will be available to others in your network.
" By default, the server only listens on localhost (127.0.0.1).

"Keymappings
" for normal mode
" nmap <silent> <F8> <Plug>MarkdownPreview
" for insert mode
" imap <silent> <F8> <Plug>MarkdownPreview
" for normal mode
" nmap <silent> <F9> <Plug>StopMarkdownPreview
" for insert mode
" imap <silent> <F9> <Plug>StopMarkdownPreview



" Markdown Previewer start  using glow
" function! PreviewerMarkdown()
"     let l:path=expand('%:p')
"     silent execute "!echo ".l:path." > ~/lastpreview.log"
"     :execute "bel vert terminal"
" endfunction
" Markdown Previewer end using glow
" Key mapping
"nmap <F4> : call PreviewerMarkdown()<CR>clear<CR>glow $(cat ~/.lastpreview.log)<CR>


" Have lines wrap instead of continue off-screen
set linebreak

" Gives Vim access to a broader range of colours
set termguicolors

" Keep cursor in approximately the middle of the screen
set scrolloff=12

"Ale
"let g:ale_lint_on_text_changed = 'never'
"let g:ale_enabled=0
let g:ale_lint_on_text_changed = 1
let g:ale_lint_on_insert_leave = 0
let g:ale_sign_error = '●'
let g:ale_sign_warning = '.'
" You can disable this option too
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 0

" Emmet Abbreviation
let g:user_emmet_install_global = 0
autocmd FileType html,css,javascript EmmetInstall
"let g:user_emmet_leader_key='e'
let g:user_emmet_expandabbr_key='<C-B>'
inoremap <C-B> <Esc>

"Prettier
"PrettierAsync
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#single_quote = 'true'
let g:prettier#config#trailing_comma = 'all'

"Indent Line
"let g:indentLine_setColors = 0
let g:indentLine_char_list = ['|', '¦', '┆', '┊']



" Ale fixers
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\}

function! AstyleF()
   " let line= line(".")
   let line=getcurpos()[1]
   let col=getcurpos()[2]
    %!astyle --mode=c --style=ansi -s4
   call cursor(line,col) 
   " execute  printf('%d',line)
endfunction

autocmd BufWritePost *.cpp call AstyleF() 
autocmd BufWritePost *.c call AstyleF() 
autocmd FileType cpp call CppRun()
autocmd FileType c call CRun()
autocmd FileType java call JavaRun()
autocmd FileType markdown call MarkdownRun()

"Vim Commentary
autocmd FileType apache setlocal commentstring=#\ %s
"autocmd *.cpp  apache setlocal commentstring=//\ %s


" Trigger configuration. You need to change this to something other than <tab> if you use one of the following:
" - https://github.com/Valloric/YouCompleteMe
" - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-k>"
let g:UltiSnipsJumpBackwardTrigger="<c-j>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


"Copy to Clipboard
vnoremap <C-y> "*y :let @+=@*<CR>
" https://duckduckgo.com/?t=ffab&q=copy+to+clipboard+vim&ia=web&iax=qa
" must have vim-gtk (aka gvim) installed 

" Search and replace hotkey
nnoremap H :%s//gc<left><left><left>

" Move highlighted text up and down
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv



function! FileFormat()
    let cursorLine = line(".")
    let filetype = &filetype
    let tab_width = 4
    let text = join(getbufline(".", 1, "$"), "\n")
    let output

    if filetype == "json"
        output = system("jq .")
    elseif filetype == 'cpp' || filetype == "c"
        output = system("astyle --style=java --indent=spaces=" . tab_width . " --pad-oper -N -C --indent-labels -xw -xW -w --mode=c")
    elseif filetype == "java"
        output = system("astyle --style=java --indent=spaces=" . tab_width . " --mode=java")
    elseif filetype == 'sh' || filetype == "zsh"
        output = system("shfmt -i " . tab_width)
    elseif filetype == 'javascript' || filetype == "js" || filetype == "typescript" || filetype == "ts"
        output = system("prettier --parser typescript --print-width 160 --tab-width " . tab_width)
    elseif filetype == 'css' || filetype == "scss" || filetype == "less" || filetype == "graphql" || filetype == "markdown" || filetype == "vue" || filetype == "html"
        output = system("prettier --parser " . filetype . " --print-width 160 --tab-width " . tab_width)
    elseif filetype == 'python'
        output = system("autopep8 --max-line-length 10000 -")
    elseif filetype == 'lua'
        output = system("stylua - --indent-type Spaces --indent-width " . tab_width . " --call-parentheses None --quote-style AutoPreferDouble")
    elseif filetype == 'tex' || filetype == "plaintex"
        output = system("latexindent")
    elseif filetype == "xml"
        output = system("xmllint --encode \"UTF-8\" --format -")
    else
        echo "Formatting of " . filetype  . " files is not currently supported."
        return
    endif

    if v:shell_error
        echo output
        return
    endif

    deletebufline(".", 1, "$")
    setbufline('.', 1, split(output, '\n'))
    execute cursorLine
endfunction

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



