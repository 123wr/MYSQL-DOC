create database stu;

use stu;

drop database stu;

create table School 
(sid int(9) primary key,
 dept char(9) not null
)character set = utf8;

create table Course
(cno int(9) primary key,
 cname char(9) not null,
 sid int(9),credit int(4),
 foreign key(sid) references School(sid)
)character set =utf8;

create table Information
(ino int(9) primary key,
 iname char(9) not null,
 sex char(4) check(sex in ('男','女')),
 age int(4),
 sid int(9),foreign key(sid) references School(sid),
 statu int(4) default 0
)character set = utf8;

create table Score
(ino int(9),
 cno int(9),
 grade int(4),
 foreign key(ino) references Information(ino),
 foreign key(cno) references Course(cno),
 primary key(ino,cno)
)character set = utf8;

insert into School (sid,dept) values ('10001','信息工程学院');
insert into School (sid,dept) values ('10002','数理学院');
insert into School (sid,dept) values ('10003','资源学院');
insert into School (sid,dept) values ('10004','外国语学院');

insert into Course (cno,cname,sid,credit) values ('11','高等数学','10002','2');
insert into Course (cno,cname,sid,credit) values ('12','大学英语','10004','3');
insert into Course (cno,cname,sid,credit) values ('13','C语言','10001','4');
insert into Course (cno,cname,sid,credit) values ('14','矿物学','10003','2');

insert into Information (ino,iname,sex,age,sid) values ('20001','张三','男','20','10002');
insert into Information (ino,iname,sex,age,sid) values ('20002','李四','男','22','10002');
insert into Information (ino,iname,sex,age,sid) values ('20003','小芳','女','21','10001');
insert into Information (ino,iname,sex,age,sid) values ('20004','大黄','女','23','10004');

insert into Score (ino,cno,grade) values ('20001','12','80');
insert into Score (ino,cno,grade) values ('20002','11','86');
insert into Score (ino,cno,grade) values ('20001','13','94');
insert into Score (ino,cno,grade) values ('20003','14','90');







