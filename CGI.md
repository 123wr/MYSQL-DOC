#### Apache 开启CGI接口
###### Apache安装
* sudo apt-get update
* sudo apt-get install tasksel
* sudo tasksel
###### Apache开启CGI接口
* （Apache中开启cgi支持）sudo ln -s /etc/apache2/mods-available/cgi.load /etc/apache2/mods-enabled/cgi.load
* （重启Apache）service apache2 restart
* sudo mkdir /usr/lib/cgi-bin/sx
* sudo chmod 777 /usr/lib/cgi-bin/sx
###### Makefile
* CC=gcc
* AFLAGS=-Wall -g
* LDFLAGS= -lmysqlclient
* OBJS= add.cgi del.cgi mod.cgi sel.cgi

* all:$(OBJS)

* $(OBJS):%.cgi:%.c
* 	$(CC) $(AFLAGS) $< cgic.c -o $@ $(LDFLAGS)	

* .PHONY:clean
* clean:
* 	rm ./*.cgi

* install:
* 	cp *.cgi /usr/lib/cgi-bin/sx/
