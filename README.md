![](./_image/vim_2_128px_541234_easyicon.net.ico)


>在这个蔚蓝色的星球上，有两大神器，一个是Vim，一个是Emacs。一个被称为编辑器之神，一个被称为神的编辑器。


#支持的语言
* HTML
* JavaScript
* Python
* Go
* Ruby
* TypeScript
* Java
* Coffee
* Swift

#准备
1. Vim 8.0(+) with Vundle
2. [安装字体补丁](https://github.com/powerline/fonts)
3. Python 2.7(+)、Python 3.5(+)、Lua 5.1(+)
4. git


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

##全屏（适用于Windows用户）
> 全屏切换：`F11`

![全屏](http://p1.bpimg.com/4851/4246e815d8296009.png)


##状态行
>格式：当前模式>分支或拼写检查>文件名  ...  文件编码<当前行百分比 当前行/所有行 当前列

![状态行](http://p1.bpimg.com/4851/7527a835b53a89fa.png)

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

##书签
> 普通模式： 按下`mm`会在当前行增加一个书签 "⚑"，以便以后快速跳转回来

![书签](http://p1.bqimg.com/4851/493869059bd51c40.png)

##注解
> 普通模式： 按下`mi`会在当前行增加一个注解"✎"，用于在当前行增加一个tips

![注解](http://i1.piimg.com/4851/43097c54121b8f02.png)

##显示全部的书签和注解
> 普通模式： 按下`ma`会显示出全部的注解和书签，回车即可跳到对应位置

![显示全部书签和注解](http://i1.piimg.com/4851/591410c6b682822b.png)


##日历
> 命令模式：输入`Calendar`

![日历](http://i1.piimg.com/4851/4b6b36c8566f38bc.png)

##查找文件
> 命令模式：输入`CtrlP`

![查找文件](http://i1.piimg.com/4851/ba1ddfe791730834.png)

##查找缓冲区
> 命令模式：输入`CtrlPBuffer`

![查找缓冲区](http://i1.piimg.com/4851/13dfca838339d488.png)


##查找最近使用的文件
> 命令模式：输入`CtrlPMRU`

![查找常用文件](http://i1.piimg.com/4851/b3bb278dc70a8315.png)

##Markdown
> 命令模式：输入`MarkdownPreview`

![Markdown实时预览](http://p1.bpimg.com/4851/6f07f0341749f07d.gif?raw=true)

## To be continued
