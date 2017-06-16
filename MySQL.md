* vim .vimrc   
* 在第三行输入a，删除18行内容

#### 更新源
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

#### 搭建环境
* 更新源 sudo apt-get update
* 安装MySQL sudo apt-get install mysql-client mysql-server
* 安装Apache sudo apt-get install tasksel
* sudo tasksel
* 找到LAMP server 空格选中 Tab键 回车
* 安装workbench sudo apt-get install mysql-workbench
* 启动MySQL服务 sudo /etc/init.d/mysql start
* 连接到本机的MySQL sql -u root -p   密码：123456
* 连接到远程主机上的MySQL mysql -h远程主机IP -u root -p密码
* 退出MySQL exit 回车
* 修改密码 mysqlladmin -u用户名 -p旧密码 password 新密码

#### 数据库中的操作
* 创建数据库 create database <数据库名>
* 显示数据库 show databases
* 删除数据库 drop database <数据库名>
* 使用数据库；将数据库作为默认数据库 use <数据库名>
* 输出相关信息 select database();
* 显示MySQL版本 select version();
* 显示当前时间 select now();
* 显示日期 select dayofmouth(current_date);
* 显示月份 select month(current_date);
* 显示年份 select year(current_date);
* 显示字符串 select "welecom !";
* 计算 select ((4+4)/10)+25;
* 创建数据表 create table <表名> (<字段名> <类型>);
* 查看表结构 desc 表名
* 删除表 drop table <表名>
* 在表中插入数据 insert into (<字段名>,<字段名>) values (值，……);
* 查询 select <字段> form <表名> where <表达式>;
* 查看表中前三行数据 select * from 表名 order by id limit 0,3;
* 删除表中数据 delete from 表名 where 表达式;
* 修改表中数据 update 表名 set 字段=新值 where 表达式;
* 增加字段 alter table 表名 add 字段 类型 其他;
* 添加索引 alter table 表名 add index 索引名 (字段名):
* 添加主关键字索引 alter table 表名 add primary key (字段名);
* 查看索引 show index form 表名
* 删除索引 alter table 表名 drop index 索引名;
* 导出数据库 mysqldump -u 用户名 -p 数据库名 > 导出的文件名
* 导出一个表 mysqldump -u 用户名 -p 数据库名 表名 > 导出的文件名
* 导入数据库 新建同名数据库 create database mydb;
* 退出数据库 mysql -uroot -p123456 mydb < /root/data/mydb.bak;
* 导入数据表 source /root/data/tb1.bak;
