SELECT * FROM `1`.new_table;
create table student(
 ID int(5) NOT NULL auto_increment,
 name varchar(20) NOT NULL,
 sex char(1),
 age int(3),
 emotion_state varchar(20),
 dept_name varchar(20) NOT NULL
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

create table exam(
 student_ID int(5) NOT NULL auto_increment,
 exam_name varchar(5),
 grade int(3)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
create table department(
dept_name varchar(20),
building_budget int(10)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;


