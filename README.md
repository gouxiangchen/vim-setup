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
**注：上述配置中写定了latex的pdf查看器是zathura，故需要先安装 sudo apt-get install zathura即可。 Ultisnips的触发键也写定是tab，可以按需要修改**
## 3、插件的安装

在vim中使用PlugInstall安装。即在一般模式下输入:PlugInstall

## 4、插件的定制
在~/.vim/目录下是插件的配置，可以拷贝本仓库的ftplug和UltiSnips文件夹到该目录下。

如需个人定制，ftplug/ UltiSnips/ 这两个文件夹可能是不存在的，需要自己建立 其他文件会由vim-plug自动生成。 

在ftplug文件夹中可以定制在不同文件类型的编辑时使用不同的快捷键，可以参考本仓库的配置（需要使用vimscript编写）
在UltiSnips文件夹中存放的是不同文件类型编辑时的替换序列，有关snippets的编写可以参考[经典snippets](https://github.com/honza/vim-snippets)

本仓库中的配置是属于个人习惯，按需要进行使用和修改

## 5、vim-tex的默认编译器修改
在 ~/.vim/plugged/vimtex/ftplugin/tex.vim 文件中
添加 ： let g:Tex_CompileRule_pdf = 'xelatex -synctex=1 --interaction=nonstopmode $*'

否则将无法支持中文文档的编译

## 额外
当安装新的latex模板或者宏包时，需要进行更新，更新命令：sudo mktexlsr
