create table department(
	deptid int not null auto_increment,
    deptname varchar(50) not null,
    deptcode varchar(10) not null,
    courseid int not null,
    CONSTRAINT pk_deptid primary key(deptid),
    CONSTRAINt uk_deptname unique key(deptname),
    CONSTRAINT fk_courseid foreign key (courseid) references course(courseid)
    );
    
    alter table department auto_increment = 10000 ;
    
    select * from department 
		inner join course on course.courseid = department.courseid
        inner join domain on domain.domainid = course.domainid
        where deptcode = 'eee' ;
    
	truncate table department ;
    
    
    insert into department (deptname,deptcode,courseid) values ("Electrical and Electronics Engineering",'EEE','100');
    insert into department (deptname,deptcode,courseid) values ("Electronics and Communication Engineering",'ECE','100');
    