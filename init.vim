"
" Kagaya vim editor config
"

syntax enable
syntax on

filetype plugin indent on

" 退出insert自动保存
au InsertLeave *.go,*.sh,*.md write

"
" 快捷键映射
"
nmap <F9> :TagbarToggle<CR>
" 打开和关闭NERDTree快捷键
map <F10> :NERDTreeToggle<CR>
" 系统剪切板快捷键
vmap <Leader>c "+y
nmap <Leader>c "+y
nmap <Leader>v "+p

"
" color
"
highlight Pmenu ctermfg=250 ctermbg=242 guifg=black guibg=darkgrey
highlight PMenuSel ctermfg=242 ctermbg=7 guifg=darkgrey guibg=black

set autoindent
set cursorline
set completeopt=menu,menuone
set hlsearch incsearch
set hidden
set ignorecase smartcase
set mouse=a
set number
set relativenumber
set showcmd
set showmatch
set shiftwidth=4
set shortmess+=c
set tabstop=4
set updatetime=300
set wildmenu
set wrap

"
" vim plug
"
call plug#begin('~/.vim/plugged')

" vim 启动页
Plug 'mhinz/vim-startify'

" coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'dgryski/vim-godef'

" Markdown
Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" 自动补全
"Plug 'Valloric/YouCompleteMe'

" 静态检查
Plug 'vim-syntastic/syntastic'

" 快速注释
Plug 'tpope/vim-commentary'

" 导航栏
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'

" 状态栏
Plug 'vim-airline/vim-airline'

" 快速对齐
Plug 'junegunn/vim-easy-align'

" 查看函数/变量列表
Plug 'majutsushi/tagbar'

" 自动闭合括号
Plug 'jiangmiao/auto-pairs'

" 文件中显示git信息
Plug 'airblade/vim-gitgutter'

" 优化paste
Plug 'roxma/vim-paste-easy'

" 快速选中代码块
Plug 'gcmt/wildfire.vim'

" 快速操作选中代码的包裹字符
Plug 'tpope/vim-surround'

" 快速预览寄存器
Plug 'junegunn/vim-peekaboo'

" 多光标
Plug 'mg979/vim-visual-multi'

" 高亮相同单词
Plug 'RRethy/vim-illuminate'

" 缩进线
" Plug 'Yggdroot/indentLine'

call plug#end()


"
" syntastic
"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_quiet_messages = { "level": "errors" }
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
let g:syntastic_mode_map = { 'mode': 'active', 'passive_filetypes': ['go'] }

"
" vim-go
"
let g:go_fmt_command = "goimports" " 格式化将默认的 gofmt 替换
let g:go_autodetect_gopath = 1
let g:go_list_type = "quickfix"

let g:go_version_warning = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_methods = 1
let g:go_highlight_generate_tags = 1

let g:godef_split = 2

"
" NERDTree
"
" 显示行号
let NERDTreeShowLineNumbers = 0
" 打开文件时是否显示目录
let NERDTreeAutoCenter = 0
" 是否显示隐藏文件
let NERDTreeShowHidden = 1
" 设置宽度
" let NERDTreeWinSize=31
" 忽略一下文件的显示
let NERDTreeIgnore = []
" 打开 vim 文件及显示书签列表
let NERDTreeShowBookmarks = 2
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup = 0


"
" tagbar
"

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }


"
" nerdtree-git-plugin
"
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeGitStatusShowIgnored = 1

"
" Valloric/YouCompleteMe
"

" make YCM compatible with UltiSnips (using supertab)
"let g:ycm_key_list_select_completion = ['<C-n>', '<space>']
"let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
"let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_show_diagnostics_ui = 0
"let g:SuperTabDefaultCompletionType = '<C-n>'
"let g:ycm_filetype_whitelist = {
"			\ "go"  : 1,
"			\ "sh"  : 1,
"			\ "zsh" : 1,
"			\ }


"
" coc.nvim
"

let g:coc_global_extensions = [
			\ 'coc-json',
			\ 'coc-vimlsp',
			\ 'coc-yaml',
			\ 'coc-marketplace']

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)



"
" vim-visual-multi
"
let g:VM_maps = {}
let g:VM_maps['Add Cursor Down'] = '<C-j>'
let g:VM_maps['Add Cursor Up'] = '<C-x>'

"
" indentLine
"
let g:indentLine_char = '┆'
