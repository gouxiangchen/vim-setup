set encoding=utf-8	"使用utf-8编码
set number
set showcmd
"set clipboard=unnamed,unnamedplus	"可以从vim复制到剪贴板中
"set mouse=a		"可以在buffer的任何地方使用鼠标
"set cursorline		"显示当前行
"set hlsearch		"显示高亮搜索
"set incsearch
set history=40		"默认指令记录是20
set ruler		"显示行号和列号
"set pastetoggle=F3	"F3快捷键于paste模式与否之间转化，防止自动缩进
"set helplang=cn	"设置为中文帮助文档，需下载并配置之后生效

"===============文本格式排版====================
set tabstop=4
set shiftwidth=4	"设置自动对齐的缩进级别
set autoindent		"配合下面一条命令根据不同语言类型进行不同的缩进操作
filetype plugin indent on
"set cindent		"以c语言风格自动缩进
"set smartindent	"自动识别以#开头的注释，不进行换行

"===========================选择solarized的模式========================== 
syntax enable  
syntax on 
"solarzed的深色模式  
"set background=dark 
"solarized的浅色模式 
"set background=light 
"colorscheme solarized        "开启背景颜色模式 
 
"===========================选择molokai的模式============================ 
"let g:rehash256 = 1 
let g:molokai_original = 1    "相较于上一个模式，个人比较喜欢此种模式 
highlight NonText guibg=#060606 
highlight Folded  guibg=#0A0A0A guifg=#9090D0 
"set t_Co=256 
"set background=dark 
"
"=============================key map====================================

"窗口大小变化仅在sp/vsp分屏下使用
"竖直方向窗口大小变化 即行数变化
nmap v+ :resize +5<CR>
nmap v- :resize -5<CR>
"水平方向变化，列数
nmap h+ :vertical resize +5<CR>
nmap h- :vertical resize -5<CR>
"所有窗口大小相等
nmap == <C-W>=

"显示文件类型
nmap ft :echo &filetype<CR>


nmap e :call AutoSpell()<CR><F12>

func AutoSpell()
	let s = &spell
	if s == 0
		noremap <F12> :set spell<CR>
	else
		noremap <F12> :set nospell<CR>
	endif
endfunc

"===========================plug in=====================================
"
"
call plug#begin('~/.vim/plugged')

Plug 'lervag/vimtex'
let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'

Plug 'sirver/ultisnips'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'


call plug#end()
