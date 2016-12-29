>包含Vim的配置文件、添加Python和Luau支持的Vim可执行程序
>Vim并不是集成开发环境，没有必要将Vim配置的那么臃肿，违反一个文版编辑器的初衷

#准备
1. Vim 8.0(+) with Vundle
2. [安装字体补丁](https://github.com/powerline/fonts)
3. 安装Python 2.7(+)、Python 3.5(+)、Lua 5.1(+)

#配置

* Windows用户

1. 备份配置文件
2. git clone https://github.com/netgather/vim-config.git
3. 替换_vimrc
4. 替换gvim.exe
5. 启动GVim
6. 运行：PluginInstall


* Linux用户

1. 备份配置文件
2. 替换_vimrc
3. Vim下运行PluginInstall


#效果

![效果图1](http://i1.piimg.com/4851/a146fc52a3b3f4ed.png)

![效果图2](http://i1.piimg.com/4851/2db7f6a79be47a2e.png)

#功能

##文件列表
>普通模式下输入 `nt`

![文件列表](http://i1.piimg.com/4851/bbe7a54203002c72.png)

##翻译
> 翻译单词 

* 普通模式：将光标至于要翻译的单词上 按下 `<Ctrl-t>`
* 可视模式：选中单词 按下`<Ctrl-t>`

![翻译单词](http://i1.piimg.com/4851/e01bc30f5d329439.png)

> 翻译句子

* 可视模式：选中要翻译的句子 按下`<Ctrl-t>`

![翻译句子](http://i1.piimg.com/4851/17dfb1c0b7b2377c.png)

##语法检查
> 当打开文件时 Vim会检查当前文件中是否有语法错误，在Quickfix列表中错误的详细信息，并在侧边栏中给出错误标识

![语法检查](http://p1.bqimg.com/4851/508b55d9e9be2e1d.png)

##Tagbar
> 普通模式：按下`tb`

![Tagbar](http://p1.bqimg.com/4851/1421d30125ef50da.png)


