create database lab4;
use lab4;
create table STUDENT 
( 
reg_no varchar (10),
s_name varchar(15),
major varchar(10),
bdate date,
primary key (reg_no));
 
 create table COURSE
 (
 course_id int ,
 c_name varchar (20),
 dept varchar (10),
 primary key (course_id));
 
  create table TEXTS
  (
  isbn int ,
  book_title varchar(20),
  publisher varchar (20),
  author varchar (10),
  primary key (isbn));
   create table table_adoption
   (
   course_id int,
   sem int,
   isbn int,
   primary key ( course_id,isbn),
   foreign key (course_id) references COURSE (course_id),
  foreign key (isbn) references TEXTS (isbn));
   create table ENROLL
   (
   reg_no varchar(10),
   course_id int,
   sem int,
   marks int,
   primary key (reg_no , course_id),
   foreign key (reg_no) references STUDENT (reg_no) ,
   foreign key (course_id) references COURSE (course_id)
   );
   insert into STUDENT values ('1DB01IS01',' KIRAN', 'ISE', '1984-01-02');
   insert into STUDENT values ('1DB01CS02','DIVYA', 'CSE',' 1985-10-12');
   insert into STUDENT values ('1DBO1ME03', 'BABU', 'MECH', '1982-09-23');
   insert into STUDENT values ('1DB01EC04', 'JOHN', 'E&C' ,'1984-02-21');
   insert into STUDENT values ('1DB01CS05' ,'ASHA', 'CSE' ,'1979-10-07');
   select * from STUDENT ;
    insert into COURSE values (11, 'DCS', 'CSE');
    insert into COURSE values (22, 'ADA', 'CSE');
    insert into COURSE values (33, 'CN', 'E&C');
    insert into COURSE values (44, 'TD', 'MECH');
    insert into COURSE values (55, 'MUP', 'E&C');
    select * from COURSE ;
    insert into TEXTS values (7722,' VB',' PHI',' HOLZNER');
	insert into TEXTS values (1144,'DSWITHC','SAPNA','NANDAGOPA');
	insert into TEXTS values (4400,' CPROG',' PHI' ,'BALAGURU');
    insert into TEXTS values (5566,' CN', 'PHI', 'TENENBAUM');
    insert into TEXTS values (3388,' MP',' TATA ','BREY');
    select * from TEXTS ;
    insert into  table_adoption values (11, 3, 7722);
	insert into  table_adoption values  (22, 4, 7722);
    insert into  table_adoption values (11, 5, 4400);
    insert into  table_adoption values  (11, 8 ,5566);
	insert into  table_adoption  values (55, 4, 3388); 
    insert into  table_adoption values (44, 4 ,5566);   
    insert into  table_adoption values  (44, 7, 3388);   
    select * from table_adoption;
   insert into ENROLL values ('1DB01IS01' , 22, 5, 76);
   insert into ENROLL values ('1DB01IS01', 11, 3, 90);
   insert into ENROLL values ('1DB01CS02', 33, 6 ,55);
   insert into ENROLL values ('1DBO1ME03', 22, 5, 75);
   insert into ENROLL values ('1DB01CS05', 44 ,5, 75);
   select * from ENROLL;
 