vim 插件的安装和配置 #为以后更换设备迅速恢复环境使用

1、vim安装 sudo apt-get install vim

2、插件管理软件vim-plg安装

curl -fLo ~/.vim/autoload/plug.vim --create-dirs 
https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

3、插件的配置

在github上

.vimrc

ftplug/tex.vim UltiSnips/ 这两个文件夹可能是不存在的，需要自己建立 其他文件会由vim-plug自动生成，上述三个文件（夹）是个人的习惯

3、插件的安装

在vim中使用PlugInstall安装

4、vim-tex的默认编译器修改 ： ~/.vim/plugged/vimtex/ftplugin/tex.vim 
添加 ： let g:Tex_CompileRule_pdf = 'xelatex -synctex=1 --interaction=nonstopmode $*'

latex texmf模板、宏包更新命令：sudo mktexlsr
