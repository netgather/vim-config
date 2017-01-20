<a name="top"></a>


<p align="center"><img src="./_image/vim_2_128px_541234_easyicon.net.ico" alt="Spacemacs"/></p>
<p align="center">
<b><a href="">philosophy</a></b>
|
<b><a href="#">for whom?</a></b>
|
<b><a href="#">screenshots</a></b>
|
<b><a href="#">documentation</a></b>
|
<b><a href="#">contribute</a></b>
|
<b><a href="#">achievements</a></b>
|
<b><a href="#">FAQ</a></b>
</p>

***
<p align="center">
<a href="#"><img src="https://badges.gitter.im/Join Chat.svg" alt="Gitter"></a>
<a href="#"><img src="https://travis-ci.org/syl20bnr/spacemacs.svg" alt="Build Status"></a>
<a href="#"><img src="https://badge.waffle.io/syl20bnr/spacemacs.png?label=Merging...&title=Merging" alt="PR being merged"></a>
<a href="#"><img src="https://img.shields.io/badge/Paypal-Donate-blue.svg" alt="Donate"></a>
<a href="#"><img src="https://img.shields.io/badge/Shop-T--Shirts-blue.svg" alt="Donate"></a>
<a href="#"><img src="https://img.shields.io/badge/Slant-Recommend-ff69b4.svg" alt="Recommend it"></a>
</p>
***

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

#包含的功能
* 所支持语言的补全、语法高亮、缩进
* 模板补全
* 语法检查
* 缓冲区补全
* 有道翻译
* 书签、注解
* 状态行美化
* 文件图标
* 历史文件
* Git
* Markdown实时预览
* CSS Color
* Emmet
* Nerdtree
* Tagbar
* 撤销历史 
* 缓冲区文件列表
* 文件查找
* Vim操作符增强
* Vim动作命令增强
* 快速添加注释
* 全屏切换
* 代码格式优化
* 代码折叠
* 缓冲区文件快速切换
* Vim与系统共用剪切板

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
4. 将_vimrc中有关的目录替换成你的目录
5. 替换gvim.exe
6. 启动GVim
7. 运行：PluginInstall

* Linux用户

1. 备份配置文件
2. 替换_vimrc
3. 将_vimrc中有关的目录替换成你的目录
4. Vim下运行PluginInstall


#效果

![效果图1](http://i1.piimg.com/4851/a146fc52a3b3f4ed.png)

![效果图2](http://i1.piimg.com/4851/2db7f6a79be47a2e.png)

#功能

##全屏（适用于Windows用户）
> 全屏切换：`F11`

![全屏](http://p1.bpimg.com/4851/4246e815d8296009.png)


##状态行
>格式：当前模式>分支或拼写检查>文件名  ...  文件编码<当前行百分比 当前行/所有行 当前列

![状态行](./_image/status bar.png)

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

##Java补全
> 开发Java最好还是使用集成开发环境，因此你可以去掉_vimrc中有关Java的插件

![Java补全](./_image/Markdown实时预览3.gif)



##CSS Color
![csscolor](./_image/csscolor.png)

To be continued......

