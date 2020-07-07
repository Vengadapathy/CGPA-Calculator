create table subtodept(
	mappingid int not null auto_increment,
    deptid int not null,
    subjectid int not null,
    
    CONSTRAINT pk_mapid primary key(mappingid),
    CONSTRAINt uk_map unique key(deptid,subjectid)
    );
    
    alter table subtodept auto_increment = 1 ;
    SELECT * from subtodept ;
    select * from subject;
    
    -- EEE sub-dept --
    insert into subtodept (deptid,subjectid) values ('1','1000'),('1','1001'),('1','1002'),('1','1003'),('1','1004'),('1','1005'),('1','1006'),
			('1','1007'),('1','1008') ;
            
	insert into subtodept (deptid,subjectid) values ('1','1009'),('1','1010'),('1','1011'),('1','1012'),('1','1013'),('1','1014'),('1','1015'),
			('1','1016'),('1','1017') ;
            
	insert into subtodept (deptid,subjectid) values ('1','1030'),('1','1031'),('1','1032'),('1','1033'),('1','1034'),('1','1035'),('1','1036'),
			('1','1037'),('1','1038') ;
     
      insert into subtodept (deptid,subjectid) values ('1','1039'),('1','1040'),('1','1041'),('1','1042'),('1','1043'),('1','1044'),('1','1045'),
			('1','1046'),('1','1047') ;
            
	insert into subtodept (deptid,subjectid) values ('1','1048'),('1','1049'),('1','1050'),('1','1051'),('1','1052'),('1','1053'),('1','1054'),
			('1','1055'),('1','1056') ;
            
    insert into subtodept (deptid,subjectid) values ('1','1057'),('1','1058'),('1','1059'),('1','1060'),('1','1061'),('1','1062'),('1','1063'),
			('1','1064'),('1','1065') ;
            
	insert into subtodept (deptid,subjectid) values ('1','1074'),('1','1075'),('1','1076'),('1','1077'),('1','1078'),('1','1079'),('1','1080'),
			('1','1081') ;
            
	insert into subtodept (deptid,subjectid) values ('1','1082'),('1','1083'),('1','1084'),('1','1085'),('1','1086'),('1','1087'),('1','1088');        
	
    
    -- ECE sub-dept --
	insert into subtodept (deptid,subjectid) values ('2','1000'),('2','1001'),('2','1002'),('2','1003'),('2','1004'),('2','1005'),('2','1006'),
			('2','1007'),('2','1008') ;
            
	insert into subtodept (deptid,subjectid) values ('2','1009'),('2','1010'),('2','1011'),('2','1012'),('2','1013'),('2','1014'),('2','1015'),
			('2','1016'),('2','1017') ;
           
     
     
    -- ICE sub-dept --        
    insert into subtodept (deptid,subjectid) values ('4','1000'),('4','1001'),('4','1002'),('4','1003'),('4','1004'),('4','1005'),('4','1006'),
			('4','1007'),('4','1008') ;
            
	insert into subtodept (deptid,subjectid) values ('4','1009'),('4','1010'),('4','1011'),('4','1012'),('4','1013'),('4','1014'),('4','1015'),
			('4','1016'),('4','1017') ;        
	