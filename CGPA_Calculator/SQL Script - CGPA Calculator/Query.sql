select * from department 
		inner join subtodept on department.deptid = subtodept.deptid
        inner join subject on subtodept.subjectid = subject.subjectid
        inner join course on department.courseid = course.courseid
        inner join domain on course.domainid = domain.domainid
        where department.deptname = "Electrical and Electronics Engineering" and subject.semester = "1" ;
        
-- MAP --



        
-- COMMON SUBJECTS Subjects --
 insert into subject (subjectname,subjectcode,semester,subtype,subcredit) values ('MATHEMATICS-I','M1','1','TH','4'),
			('PHYSICS','PHY','1','TH','4'),('CHEMISTRY','CHE','1','TH','4');
insert into subject (subjectname,subjectcode,semester,subtype,subcredit) values ('BASIC CIVIL AND MECHANICAL ENGINEERING','BCM','1','TH','4'),
            ('ENGINEERING MECHANICS','EM','1','TH','4'),('COMMUNICATIVE ENGLISH','CE','1','TH','4'),
            ('PHYSICS LAB','PHYLAB','1','PR','2'),('CHEMISTRY LAB','CHELAB','1','PR','2'),('WORKSHOP PRACTICE','WORKSHOP','1','PR','2');
            
 insert into subject (subjectname,subjectcode,semester,subtype,subcredit) values ('MATHEMATICS-II','M2','2','TH','4'),
			('Material Science','ME','2','TH','4'),('Environmental Science','EVS','2','TH','4'),
            ('Basic Electrical and Electronics Engineering','BEEE','2','TH','4'),
            ('Engineering Thermodynamics','ETD','2','TH','4'),('Computer Programming','CP','2','TH','4'),
            ('Computer Programming Lab','CPLAB','2','PR','2'),('Engineering Graphics','EG','2','PR','2'),('Basic Electrical & Electronics Lab','BEEELAB','2','PR','2');
            
 insert into subject (subjectname,subjectcode,semester,subtype,subcredit) values ('BASIC CIVIL AND MECHANICAL ENGINEERING','BCM','2','TH','4'),
            ('ENGINEERING MECHANICS','EM','2','TH','4'),('COMMUNICATIVE ENGLISH','CE','2','TH','4'),
            ('PHYSICS LAB','PHYLAB','2','PR','2'),('CHEMISTRY LAB','CHELAB','2','PR','2'),('WORKSHOP PRACTICE','WORKSHOP','2','PR','2');
            
 insert into subject (subjectname,subjectcode,semester,subtype,subcredit) values ('Basic Electrical and Electronics Engineering','BEEE','2','TH','4'),
            ('Engineering Thermodynamics','ETD','2','TH','4'),('Computer Programming','CP','2','TH','4'),
            ('Computer Programming Lab','CPLAB','2','PR','2'),('Engineering Graphics','EG','2','PR','2'),('Basic Electrical & Electronics Lab','BEEELAB','2','PR','2');
 
 
 
 -- EEE --
insert into subject (subjectname,subjectcode,semester,subtype,subcredit) values ('MATHEMATICS-III','M3','3','TH','4'),
			('Electric Circuit Analysis','ECA','3','TH','4'),('Electrical Machines – I','EM1','3','TH','4'),
            ('Electronic Devices and Circuits','EDC','3','TH','4'),('Electromagnetic Theory','EMT','3','TH','4'),('Fluid and Thermal Machines','FTM','3','TH','4'),
            ('Electrical Machines Lab - I','EM1LAB','3','PR','2'),('Electronics Lab – I','E1LAB','3','PR','2'),('Fluid and Thermal Machines Lab','FTMLAB','3','PR','2');
            
insert into subject (subjectname,subjectcode,semester,subtype,subcredit) values ('MATHEMATICS-IV','M4','4','TH','4'),
			('Electrical Machines – II','EM2','4','TH','4'),('Electronic Circuits','EC','4','TH','4'),
            ('Linear Control System','LCS','4','TH','4'),('Pulse and Digital Circuits','PDC','4','TH','4'),('Object Oriented Programming','OOPS','4','TH','4'),
            ('Electrical Machine Lab - II','EM2LAB','4','PR','2'),('Electronics Lab – II','E2LAB','4','PR','2'),('Object Oriented Programming Lab','OOPSLAB','4','PR','2');

insert into subject (subjectname,subjectcode,semester,subtype,subcredit) values ('MATHEMATICS-V','M5','5','TH','4'),
			('Analog and Digital Integrated Circuits','ADIC','5','TH','4'),('Transmission and Distribution','TD','5','TH','4'),
            ('Power Electronics','PE','5','TH','4'),('Measurements and Instrumentation','MI','5','TH','4'),('Communication Engineering','CE','5','TH','4'),
            ('Electronics Lab – III','E3LAB','5','PR','2'),('Measurement and Control Lab','MILAB','5','PR','2'),('General Proficiency -I','GP1','5','PR','2');
 
insert into subject (subjectname,subjectcode,semester,subtype,subcredit) values ('MATHEMATICS-V','M5','5','TH','4'),
			('Analog and Digital Integrated Circuits','ADIC','5','TH','4'),('Transmission and Distribution','TD','5','TH','4'),
            ('Power Electronics','PE','5','TH','4'),('Measurements and Instrumentation','MI','5','TH','4'),('Communication Engineering','CE','5','TH','4'),
            ('Electronics Lab – III','E3LAB','5','PR','2'),('Measurement and Control Lab','MILAB','5','PR','2'),('General Proficiency -I','GP1','5','PR','2');
  
insert into subject (subjectname,subjectcode,semester,subtype,subcredit) values ('Power System Analysis','PSA','6','TH','4'),
			('Utilization of Electrical Energy','UEE','6','TH','4'),('Microprocessors and Applications','MPMC','6','TH','4'),
            ('Electrical Machine Design','EMD','6','TH','4'),('Digital Signal Processing','DSP','6','TH','4'),('Energy Engineering','EE','6','TH','4'),
            ('Power Electronics Lab','PELAB','6','PR','2'),('Micro Processor Lab','MPMCLAB','6','PR','2'),('General Proficiency -II','GP2','6','PR','2');  
 
insert into subject (subjectname,subjectcode,semester,subtype,subcredit) values ('Industrial Management','IM','7','TH','4'),
			('Solid State Drives','SSD','7','TH','4'),('Elective – I','ELE1','7','TH','4'),('Elective – II','ELE2','7','TH','4'),('Elective – III','ELE3','7','TH','4'),
            ('Power System Simulation Lab','PSSLAB','7','PR','2'),('Project Phase - I','PRO1','7','PR','2'),('Seminar','SEM','7','PR','2');
  
insert into subject (subjectname,subjectcode,semester,subtype,subcredit) values ('Power system operation and control','PSOC','8','TH','4'),
			('Protection and Switchgear','PSG','8','TH','4'),('Elective – IV','ELE4','8','TH','4'),('Elective – V','ELE5','8','TH','4'),('Elective – VI','ELE6','8','TH','4'),
            ('Project Phase - II','PRO2','8','PR','2'),('Comprehensive Viva','CV','8','PR','2');
             
            
            
            
-- CSE --


