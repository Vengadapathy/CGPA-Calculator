select * from department 
		inner join subtodept on department.deptid = subtodept.deptid
        inner join subject on subtodept.subjectid = subject.subjectid
        inner join course on department.courseid = course.courseid
        inner join domain on course.domainid = domain.domainid
        where department.deptname = "Electrical and Electronics Engineering" and subject.semester = "1" ;