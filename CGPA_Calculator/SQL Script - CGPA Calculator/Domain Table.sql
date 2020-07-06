create table domain(
	domainid int not null auto_increment,
    domainname varchar(30) not null,
    CONSTRAINT pk_domainid primary key(domainid),
    CONSTRAINT uk_domainname unique key(domainname)
);

    alter table domain auto_increment = 1 ;
    
    insert into domain (domainname) values ('Medical'),('Engineeering'),('Arts and Science');
    
    select * from domain ;