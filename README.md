>包含Vim的配置文件、添加Python和Luau支持的Vim可执行程序

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
1. 
![效果图1](http://i1.piimg.com/4851/a146fc52a3b3f4ed.png)
2. 
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
