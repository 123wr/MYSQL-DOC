#### Apache 开启CGI接口
##### Apache安装
* sudo apt-get update
* sudo apt-get install tasksel
* sudo tasksel
##### Apache开启CGI接口
* （Apache中开启cgi支持）sudo ln -s /etc/apache2/mods-available/cgi.load /etc/apache2/mods-enabled/cgi.load
* （重启Apache）service apache2 restart
* sudo mkdir /usr/lib/cgi-bin/sx
* sudo chmod 777 /usr/lib/cgi-bin/sx
##### Makefile
* CC=gcc
* AFLAGS=-Wall -g
* LDFLAGS= -lmysqlclient
* OBJS=I_add.cgi I_del.cgi I_mod.cgi I_sel.cgi I_del_mod.cgi IA_sel.cgi C_add.cgi C_del.cgi C_mod.cgi C_sel.cgi S_add.cgi S_del.cgi S_mod.cgi S_sel.cgi SC_add.cgi SC_del.cgi SC_mod.cgi SC_sel.cgi

* all:$(OBJS)

* $(OBJS):%.cgi:%.c
* 	$(CC) $(AFLAGS) $< cgic.c -o $@ $(LDFLAGS)

* .PHONY:clean
* clean:
* 	rm ./*.cgi

* install:
* 	cp *.cgi /usr/lib/cgi-bin/sx/
* 	cp *.html /usr/lib/cgi-bin/sx/
* 	sudo cp *.html /var/www/html

* （安装mysql的c语言库）sudo apt-get install libmysqlclient-dev

##### CGI基本使用
* 获取表单数据 cgiFormResult Type cgiFormString(char *name, char *result, int max);
* name, 指定要获取的表单项的名字；result,将获得的数据存储到result中； max， 指定最多读取的字符个数
* 例：cgiFormString("name", result,  16);

* fprintf(FILE *stream,const char *format,……);
* 例：fprintf(stdin, "helloworld\n");

* int atoi(const char *nptr);将一个字符串转换成对应的数字
* 例：atoi(sno);

##### Atom editor 开环境使用的插件
* activate-power-mode：动感插件 atl + ctrl + o :打开插件
* vim-mode：vim模式
* ex-mode：实现:w功能
* monokai：高亮显示
* atom-ternjs：JavaScript 自动补全
* autoprefixer：给 CSS 添加适当的前缀
* color-picker：选颜色
* emmet：写 HTML 的神器
* atom-beautify：美化代码，空格啊什么什么的
* autoclose-html：HTML自动补全闭标签
* file-icons: 增加许多图标,在侧边蓝文件名前面的icon,,很赞
* autocomplete-modules: 自动补全插件, 有HTML, CSS, python 等
* highlight-selected: 高亮当前所选的文字, 双击后全文这个词或变量都会变高亮.
* Open In Browser: 右键打开浏览器.
* atom-clock: 在bar显示 时间
* autocomplete-js-import: 模块导入智能提示
* autocomplete-modules: 模块智能提示【node_modules】

##### Atom 编写C代码
* cd 进入代码目录
* atom .
* 代码编写完成后保存
* make clean   
* vim Makefile 
* make
* make install
* cp -r public/ index.heml /var/www/html

##### 乱码问题
* mysql -u root -p 密码：123456
* show variables like 'character%';
* set character_set_server =utf8;
* set character_set_database =utf8;
* .c文件初始化中加入：mysql_optons(db,MYSQL_SET_CHARSET_NAME,"utf8");
