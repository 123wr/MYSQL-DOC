use stu;

create table School (sid int(9) primary key,dept char(9) not null);
create table Course(cno int(9) primary key,cname char(9) not null,sid int(9),credit int(4),foreign key(sid) references School(sid));
create table Information(ino int(9) primary key,iname char(9) not null,sex char(4),age int(4),sid int(9),foreign key(sid) references School(sid));
create table Score(ino int(9),cno int(9),grade int(4),foreign key(ino) references Information(ino),foreign key(cno) references Course(cno),primary key(ino,cno));

insert into School (sid,dept) values ('10001','xingong');
insert into School (sid,dept) values ('10002','shuli');
insert into School (sid,dept) values ('10003','ziyuan');
insert into School (sid,dept) values ('10004','shuihuan');

insert into Course (cno,cname,sid,credit) values ('11','math','10002','2');
insert into Course (cno,cname,sid,credit) values ('12','english','10001','3');
insert into Course (cno,cname,sid,credit) values ('13','cs','10001','4');
insert into Course (cno,cname,sid,credit) values ('14','is','10004','2');

insert into Information (ino,iname,sex,age,sid) values ('20001','zhangsan','men','20','10002');
insert into Information (ino,iname,sex,age,sid) values ('20002','lisi','men','20','10002');
insert into Information (ino,iname,sex,age,sid) values ('20003','fangfang','girl','20','10001');
insert into Information (ino,iname,sex,age,sid) values ('20004','xiaobai','girl','23','10001');

insert into Score (ino,cno,grade) values ('20001','12','80');
insert into Score (ino,cno,grade) values ('20002','11','86');
insert into Score (ino,cno,grade) values ('20001','13','94');
insert into Score (ino,cno,grade) values ('20003','14','90');