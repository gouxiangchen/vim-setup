# vim 插件的安装和配置 
为以后更换设备迅速恢复环境使用

按以下步骤安装，实现vim + Latex + Ultisnips的组合，可以实现支持中文的Latex文档的编写、编译（其中包含个人的配置，按需修改）

## 1、vim安装 
sudo apt-get install vim

## 2、插件管理软件vim-plg安装
在终端输入

curl -fLo ~/.vim/autoload/plug.vim --create-dirs 
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

## 3、插件的配置
使用本仓库的
.vimrc

或者在本地~/.vimrc的末尾加入下面的语句
```
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
```

## 3、插件的安装

在vim中使用PlugInstall安装。即在一般模式下输入:PlugInstall

## 4、插件的定制

ftplug/tex.vim UltiSnips/ 这两个文件夹可能是不存在的，需要自己建立 其他文件会由vim-plug自动生成。 

本仓库中的配置是属于个人习惯，按需要进行使用和修改

## 5、vim-tex的默认编译器修改
在 ~/.vim/plugged/vimtex/ftplugin/tex.vim 文件中
添加 ： let g:Tex_CompileRule_pdf = 'xelatex -synctex=1 --interaction=nonstopmode $*'

否则将无法支持中文文档的编译

## 额外
当安装新的latex模板或者宏包时，需要进行更新，更新命令：sudo mktexlsr
