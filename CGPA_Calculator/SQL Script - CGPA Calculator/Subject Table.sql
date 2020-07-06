create table subject(
	subjectid int not null auto_increment,
    subjectname varchar(50) not null,
    subjectcode varchar(10),
    semester int not null,
    subtype varchar(10) not null,
    subcredit int not null,
    CONSTRAINT pk_subid primary key(subjectid),
    CONSTRAINt uk_sub unique key(subjectname,semester)
    );
    
    alter table subject auto_increment = 1000 ;
    
    insert into subject (subjectname,subjectcode,semester,subtype,subcredit) values ('MATHEMATICS-I','M1','1','TH','4'),
			('PHYSICS','PHY','1','TH','4'),('CHEMISTRY','CHE','1','TH','4'),('BASIC CIVIL AND MECHANICAL ENGINEERING','BCM','1','TH','4'),
            ('ENGINEERING MECHANICS','EM','1','TH','4'),('COMMUNICATIVE ENGLISH','CE','1','TH','4'),
            ('PHYSICS LAB','PHYLAB','1','PR','2'),('CHEMISTRY LAB','CHELAB','1','PR','2'),('WORKSHOP PRACTICE','WORKSHOP','1','PR','2');
            
	select * from subject ;
    
    truncate table subject ;
    