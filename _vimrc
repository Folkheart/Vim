set nocompatible
execute pathogen#infect()
filetype plugin on

"Visual options
    language messages en
    set encoding=utf-8
    " colorscheme onedark
    colorscheme gruvbox
    " colorscheme dracula
    syntax on
    " highlight Normal guifg=white guibg=black
    highlight Normal guibg=black
    set nu relativenumber          "line numbers
    set laststatus=2            "show status line
    set scrolloff=3
    set cursorline
    set wildmenu                "tab completition menu
    set colorcolumn=80
    "Gui of gVim
        " set guifont=Source\ Code\ Pro\ for\ Powerline:h10
        " set guifont=Source_Code_Pro_for_Powerline:h12
        set guifont=Mononoki:h11:b
        set guioptions-=m           "remove menu bar
        set guioptions-=T           "remove toolbar
        set guioptions-=r           "remove right-hand scroll bar
        set guioptions-=L           "remove left-hand scroll bar
    "AirPlane Plugin
        let g:airline#extensions#tabline#enabled = 0
        let g:airline_powerline_fonts = 1
        "let g:airline_theme='alduin'
        " let g:airline_theme='base16'

"Vim Behavior options
    set undofile                "every file has an undo file history
    set nobackup                "denies auto backup files
    "set noswapfile
    set hidden                  "allow changing buffers without saving
    set incsearch               "search text highlight
    set hlsearch
    set ignorecase              "no case sensitive searchs
    set smartcase               "case sensitive searchs if uppercase
    "set undodir=~/.vim/undodir
    " set showmatch
    set clipboard=unnamed       "use Windows clipboard
    set mouse=a                 "allow use of mouse in all modes
    set splitbelow
    set splitright              "open splits behavior

"Programing Options
    set tabstop=4               "tabs of the original file
    set shiftwidth=4            "indentation tabs
    set softtabstop=4           "tabs in edition
    set expandtab               "spaces inside tabs
    set autoindent              "keeps last indentation
    set smartindent
    "ASM Assembler
        autocmd filetype asm setlocal tabstop=8 filetype=nasm

"AutoComplPop Autocompletion
    set completeopt=menuone,longest ",preview
    set shortmess+=c            "hides messages from menu
    "hiting Tab selects from autocompletion menu, else is Tab
    inoremap <expr> <Tab> pumvisible() ? "<C-Y>" : "<Tab>"

"Control P speedup
    let g:ctrlp_map = '<leader>p'
    let g:ctrlp_cmd = 'CtrlP'
    " let g:ctrlp_cmd = 'CtrlPBuffer'
    " nnoremap <silent> <Leader>b :CtrlPBuffer <CR>
    " nnoremap <silent> <Leader>p :CtrlP <CR>

    set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe,*.doc,*.docx,*.pdf  "for Windows
    let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
    let g:ctrlp_custom_ignore = {
      \ 'dir':  '\v[\/]\.(git|hg|svn)$',
      \ 'file': '\v\.(exe|so|dll)$',
      \ 'link': 'some_bad_symbolic_links',
      \ }
"Sneak plugin
    let g:sneak#s_next = 1

"Key binds
    "set Leader Key
    nnoremap <Space> <Nop>
    let mapleader=" "           "space is leader
    "deletes all trailing whitespaces
    nnoremap <silent> <F5> :let _s=@/ <Bar> :%s/\s\+$//e <Bar> :let @/=_s <Bar> :nohl <Bar> :unlet _s <CR>
    "turns tabs into spaces
    nnoremap <silent> <F4> :retab <CR>
    "reloads vimrc
    nnoremap <silent> <F3> :source $VIM/_vimrc <CR>
    " nnoremap <silent> <leader>r  :source $VIM/_vimrc <CR>
    nnoremap <C-s> :w <CR>

" let g:python3_host_prog = expand('$VIM\python-3.7.8\python3.exe')
let g:python3_host_prog = expand('$VIM\python3.exe')
" let g:python3_host_prog = expand('C:\Users\Stella\AppData\Local\Programs\Python\Python38-32\python.exe')

	nnoremap <leader>f :<C-u>Unite -start-insert file<CR>
	nnoremap <leader>b :<C-u>Unite -start-insert buffer<CR>



" set rtp+=%VIM
" " Define mappings
" autocmd FileType denite call s:denite_my_settings()
" function! s:denite_my_settings() abort
"   nnoremap <silent><buffer><expr> <CR>
"   \ denite#do_map('do_action')
"   nnoremap <silent><buffer><expr> d
"   \ denite#do_map('do_action', 'delete')
"   nnoremap <silent><buffer><expr> p
"   \ denite#do_map('do_action', 'preview')
"   nnoremap <silent><buffer><expr> q
"   \ denite#do_map('quit')
"   nnoremap <silent><buffer><expr> i
"   \ denite#do_map('open_filter_buffer')
"   nnoremap <silent><buffer><expr> <Space>
"   \ denite#do_map('toggle_select').'j'
" endfunction

""Vim-LaTex
"    filetype plugin on
"    set shellslash
"    filetype indent on
"    let g:tex_flavor='latex'

