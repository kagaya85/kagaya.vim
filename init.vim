"
" Kagaya's vim editor config
"

syntax enable
syntax on

filetype plugin indent on

" 退出insert自动保存
" au InsertLeave *.go,*.sh,*.md write

" 插入模式显示绝对行号
augroup relative_numbser
    autocmd!
    autocmd InsertEnter * :set norelativenumber
    autocmd InsertLeave * :set relativenumber
augroup END

"
" 快捷键映射
"

" Leader键
let mapleader=','

" 保存快捷键
inoremap <Leader>w <Esc>:w<CR>
vnoremap <Leader>w <Esc>:w<CR>
noremap <Leader>w :w<CR>

" 映射移动窗口快捷键
" noremap <C-h> <C-w>h
" noremap <C-j> <C-w>j
" noremap <C-k> <C-w>k
" noremap <C-l> <C-w>l

" 打开和关闭Tagbar
nnoremap <Leader>t :TagbarToggle<CR>

" 打开和关闭NERDTree快捷键
nnoremap <Leader>v :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

" 系统剪切板快捷键
" vnoremap <Leader>c "+y
" nnoremap <Leader>c "+y
" nnoremap <Leader>v "+p

" easymotion
map ss <plug>(easymotion-s2)

" 取消高亮搜索
nnoremap <Leader>h :nohlsearch<CR>

" airline tabline map
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>0 <Plug>AirlineSelectTab0
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

"
" color
"
highlight Pmenu ctermfg=250 ctermbg=242 guifg=black guibg=darkgrey
highlight PMenuSel ctermfg=242 ctermbg=7 guifg=darkgrey guibg=black

"
" property
"
"

" TextEdit might fail if hidden is not set.
set hidden
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
set ttyfast "should make scrolling faster
set lazyredraw "same as above
set updatetime=100
set wildmenu
set wrap
set encoding=UTF-8
set ruler

"
" vim plug
"
call plug#begin('~/.vim/plugged')

" vim theme
Plug 'NLKNguyen/papercolor-theme'

" vim 启动页
Plug 'mhinz/vim-startify'

" coc 自动补全
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" golang
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
" Plug 'dgryski/vim-godef'

" Markdown
" Plug 'plasticboy/vim-markdown'
Plug 'mzlogin/vim-markdown-toc'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

" ycm 自动补全
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
Plug 'vim-airline/vim-airline-themes'

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
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" 高亮相同单词
Plug 'RRethy/vim-illuminate'

" 缩进线
Plug 'Yggdroot/indentLine'

" 自动生成go test
Plug 'buoto/gotests-vim'

" 文件搜索
Plug 'ctrlpvim/ctrlp.vim'

" icon
Plug 'ryanoasis/vim-devicons'

" git命令
Plug 'tpope/vim-fugitive'

" easymotion 快速移动
Plug 'easymotion/vim-easymotion'

" splitjoin 展开折叠代码块
Plug 'AndrewRadev/splitjoin.vim'

call plug#end()

"
" theme
"
set background=dark
colorscheme PaperColor
autocmd ColorScheme * highlight! link SignColumn LineNr

"
" vim airline
"
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_close_button = 1 " 'X' at the end of the tabline
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1

" define the set of filetypes which are ignored for the selectTab keymappings: >
let g:airline#extensions#tabline#keymap_ignored_filetypes =
    \ ['vimfiler', 'nerdtree', 'tagbar']
" change the display format of the buffer index >
let g:airline#extensions#tabline#buffer_idx_format = {
    \ '0': '0 ',
    \ '1': '1 ',
    \ '2': '2 ',
    \ '3': '3 ',
    \ '4': '4 ',
    \ '5': '5 ',
    \ '6': '6 ',
    \ '7': '7 ',
    \ '8': '8 ',
    \ '9': '9 '
    \}
" fixes unnecessary redraw, when e.g. opening Gundo window
let airline#extensions#tabline#ignore_bufadd_pat =
    \ '\c\vgundo|undotree|vimfiler|tagbar|nerd_tree'

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
let g:go_auto_type_info = 1
" let g:go_auto_sameids = 1 "自动高亮相同的标识符
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
let g:go_highlight_build_constraints = 1

let g:go_def_mapping_enabled = 0
let g:go_code_completion_enabled = 0 

" 增加GoAlternate快捷命令
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
autocmd Filetype go command! -bang AV call go#alternate#Switch(<bang>0, 'vsplit')
autocmd Filetype go command! -bang AS call go#alternate#Switch(<bang>0, 'split')
autocmd Filetype go command! -bang AT call go#alternate#Switch(<bang>0, 'tabe')

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
let NERDTreeWinSize=31
" 忽略一下文件的显示
let NERDTreeIgnore = [
		\ '\.git$',
		\ '\.DS_Store$',
		\ '\.pyc$',
		\ '\.swp',
		\ '\.swo',
		\ '\.vscode$',
		\ '\.idea$',
		\ ]
" 打开 vim 文件及显示书签列表
let NERDTreeShowBookmarks = 2
" Automatically delete the buffer of the file you just deleted with NerdTree
let NERDTreeAutoDeleteBuffer = 1
" let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup = 0
" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == '' | NERDTree | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

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
			\ 'coc-marketplace',
			\ 'coc-go']

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

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

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

" Formatting selected code.
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')


"
" vim-visual-multi
"
let g:VM_maps = {}
let g:VM_maps['Add Cursor Down'] = '<C-j>'
let g:VM_maps['Add Cursor Up'] = '<C-k>'

"
" indentLine
"
let g:indentLine_char = '┆'

" CtrlP 文件搜索
"
"
let g:ctrlp_map = '<C-p>'

"
" GitGutter 显示文件修改
"
let g:gitgutter_set_sign_backgrounds = 1


