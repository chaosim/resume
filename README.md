做简历也是一件技术活。Geek自有geek的做法。
### 制作过程
最开始，楼主是不想浪费时间在这件事上的。

虽然觉得招聘网站提供的简历格式完全无法hold住楼主的经历和个性，还是直接填一填招聘网站上的表格，就开始发送了。

然而，靠这种方式hold不住公司。

于是，楼主祭出DIY大法。

第一步，先google。因为楼主前几天准备用markdown写一本书，是关于[太极语言](https://github.com/taijiweb/taijilang)的教程。刚好比较熟悉pandoc这个大杀器。还有gitbook之类的网站工具。就先搜索markdown，pdf以及简历相关的内容。找到了[这里](http://blog.sina.com.cn/s/blog_5ee56d450101dah2.html)， 还有[这里](http://sysadvent.blogspot.com/2011/12/day-14-write-your-resume-in-markdown.html)

然而，在用pandoc做简历的过程中，发现实在是用牛刀来杀鸡..., 与它配套的CTex（有它才能解决中文问题）下载包就有1.3G。决定寻找更轻量级的解决办法。

于是就找到了徐晓东先生的文章[markdown-resume.js: 使用 Markdown 编写简历](https://linuxtoy.org/archives/markdown-resume-js.html)和[项目](https://github.com/xuxiaodong/resume)。

先安装，`npm install -g markdown-resume`，试做一把。

`md2resume --pdf resume.md`, 系统报告没有wkhtmltopdf这个命令。

再次google，[下载](http://wkhtmltopdf.org/downloads.html)，安装，设置路径，成功生成pdf。

徐晓东先生的简历很漂亮，排版也很精致。当然，我无法套用他的排版，必须要修改我的markdown排版标记和对应的css。然而排版中我还是发现markdown不够灵活，无法完全控制html的结构和对应的css，我于是转了一个念头，网上肯定有大把大把的现成html的简历，何不找一个现成合用的，改改内容就成了，该多省事。

于是就搜到了[csdn提供的这一套模板](http://download.csdn.net/detail/daolang504/488745)。

然而，下载一看，发现事情并不象想象的那样简单。面对模板中这么多的刘祥玲先生和刘祥玲女士，我真的无法化身成为其中的任何一位。

发现了wkhtmltopdf这把飞刀，走到这步，我已经有了新的主意：直接用自己最日常的技术来摆平这件事。写原始的html太繁琐了，我就用jade模板来生成html，然后用css排版，最后用wkhtmltopdf转换成pdf。

最后的小插曲：第一次生成的pdf，发现都是乱码。于是到徐晓东先生的html保护的css里把有关的字体copy过来，放到我的css里。一切ok。

其余的，就都在[这份简历](https://github.com/chaosim/resume/blob/master/cxm-resume.pdf)里啦。

项目中文件比较杂乱，因为我有意想保留相关的文件和原始的过程。

当然，这个经历只是一个web前后端开发者的特殊经历。其他领域，比如UI设计者，非技术人士，等等，他们的经历，技能，以及他们追求的简历表现形式，都决定了可能需要寻找不一样的制作方法和工具。

录以备案，聊作参考：
### 一些命令：
  * 安装 Node.js 模块：
  
    ```shell
    npm install -g markdown-resume
    npm install -g jade
    ```   

  * 将本目录中的 CSS 文件复制到 `node_modules/markdown-resume/assets/css`：
  
    `cp resume.css node_modules/markdown-resume/assets/css`
   
  * 在好npm命令的系统路径后，可以这样执行md2resume：
  
    ```shell
    md2resume resume.md       # 生成 HTML 格式
    md2resume --pdf resume.md # 生成 PDF 格式
    ```

  * 先设置好wkhtmltopdf的系统路径，然后执行：
  
    ```shell
    wkhtmltopdf resume.html resume.pdf # 必须同时有输入和输出路径
    ```
    
### 致谢
本项目源自 [徐小东的项目](https://github.com/xuxiaodong/resume)

徐小东的项目 fork 自 David Hamp-Gonsalves 的 [Resume](https://github.com/davidhampgonsalves/resume)

感谢相关人士和项目。感谢刘祥玲先生和刘祥玲女士:)