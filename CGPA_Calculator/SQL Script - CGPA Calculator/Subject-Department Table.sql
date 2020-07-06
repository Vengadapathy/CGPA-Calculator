create table subtodept(
	mappingid int not null auto_increment,
    deptid int not null,
    subjectid int not null,
    
    CONSTRAINT pk_mapid primary key(mappingid),
    CONSTRAINt uk_map unique key(deptid,subjectid)
    );
    
    alter table subtodept auto_increment = 1 ;
    
    insert into subtodept (deptid,subjectid) values ('1','1000'),('1','1001'),('1','1002'),('1','1003'),('1','1004'),('1','1005'),('1','1006'),
			('1','1007'),('1','1008') ;