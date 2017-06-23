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
* cp -r public/ index.heml /var/www/html
* make clean   
* vim Makefile 
* make
* make install
