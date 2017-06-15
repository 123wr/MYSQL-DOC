*vim .vimrc   
*在第三行输入a，删除18行内容

####更新源
* sudo vim /etc/apt/sources.list
>*用下列内容替换源列表中的内容
>>deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse
##测试版源
deb http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse
#源码
deb-src http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse
##测试版源
deb-src http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse
#Canonical 合作伙伴和附加
deb http://archive.canonical.com/ubuntu/ xenial partner
deb http://extras.ubuntu.com/ubuntu/ xenial main

####搭建环境
* 更新源 sudo apt-get update
* 安装MySQL sudo apt-get install mysql-client mysql-server
* 安装Apache sudo apt-get install tasksel
*            sudo tasksel
*            找到LAMP server 空格选中 Tab键 回车
* 安装workbench sudo apt-get install mysql-workbench
* 启动MySQL服务 sudo /etc/init.d/mysql start
* 连接到本机的MySQL sql -u root -p   密码：123456
* 连接到远程主机上的MySQL mysql -h远程主机IP -u root -p密码
* 退出MySQL exit 回车
* 修改密码 mysqlladmin -u用户名 -p旧密码 password 新密码

####数据库中的操作
* 创建数据库 create database <数据库名>
* 显示数据库 show databases
* 删除数据库 drop database <数据库名>
* 使用数据库；将数据库作为默认数据库 use <数据库名>
* 输出相关信息 select database();
* 显示MySQL版本 select version();
* 显示当前时间 select now();
* 显示年月日 select dayofmouth(current_date);
