create table course(
	courseid int not null auto_increment,
    coursename varchar(30) not null,
    coursecode varchar(10),
    domainid int not null,
    CONSTRAINT pk_courseid primary key(courseid),
    CONSTRAINt uk_coursename unique key(coursename),
	CONSTRAINT fk_domainid foreign key (domainid) references domain(domainid)
    );
    
    alter table course auto_increment = 100 ;
    
    select * from course ;
    
    insert into course (coursename,coursecode,domainid) values ('Bachelor of Technology','B.Tech','2'),('Masters in Technology','M.Tech','2');