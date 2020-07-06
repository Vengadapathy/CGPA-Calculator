create table grade(
	gradeid int not null auto_increment,
	grade varchar(1) not null,
    gradecredit int not null,
    CONSTRAINT pk_gradeid primary key(gradeid),
    CONSTRAINt uk_grade unique key(grade,gradecredit)
    );
    
    alter table grade auto_increment = 1 ;
    
    insert into grade (grade,gradecredit) values ('S','10'),('A','9'),('B','8'),('C','7'),('D','6'),('E','5'),('F','0');
    
    select * from grade ;