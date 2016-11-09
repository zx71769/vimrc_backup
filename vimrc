"自動縮排。
set ai
"啟用暗色背景模式。
set t_Co=256
set background=dark
"啟用行游標提示。
set cursorline
"文字編碼加入utf8。
set enc=utf8
set fileencodings=utf-8,cp950
"標記關鍵字。
set hls
"只在 Normal 以及 Visual 模式使用滑鼠，也就是取消 Insert 模式的滑鼠，
set mouse=nv
"顯示行號。
"set number
"搜尋不分大小寫。
set ic
"自訂縮排(Tab)位元數。
set tabstop=4
set shiftwidth=4
"不自動縮排
set noautoindent
"解決複製貼上格式跑掉
set pastetoggle=<F12>

syntax on

" For vim folding
set foldmarker={{{,}}}
set foldmethod=marker
set foldlevel=0 " 預設全部關閉
let php_folding = 1 
set foldnestmax=3 

set confirm

set history=100

set cursorline

set laststatus=2

" 啟用依照檔案類型，決定自動縮排樣式的功能
"filetype indent on

set statusline=%4*%<\%m%<[%f\%r%h%w]\ [%{&ff},%{&fileencoding},%Y]%=\[Position=%l,%v,%p%%]
 
colorscheme torte

autocmd Filetype gitcommit setlocal spell textwidth=72

" The TagList plugin on F9
map <f9> :Tlist<CR>

" The Syntastic plugin
"execute pathogen#infect()

set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

"TO_DO & FIX_ME list
command Todo noautocmd vimgrep /TODO\|FIXME/j ** | cw
