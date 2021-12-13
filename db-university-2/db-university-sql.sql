create database `db-universitysql`
use `db-university`

create table `departments`(
id int not null auto_increment,
name varchar(255) not null,
address varchar(255),
phone int,
email varchar(255),
website varchar(255),
primary key(id)
);

create table `degrees`(
id int not null auto_increment,
name varchar(255) not null,
address varchar(255),
email varchar(255),
website varchar(255),
`level`varchar(255),
`departments_id`int not null,
primary key(`id`),
foreign key(`departments_id`)references departments(`id`)
);

create table courses (
id int not null auto_increment,
name varchar(255),
description varchar(255),
website varchar(255),
cfu int,
`degrees_id` int not null,
primary key(`id`),
foreign key(`degrees_id`)references `degrees`(`id`)
);

create table teachers (
`id` int not null auto_increment,
`name` varchar(255),
`surname` varchar(255),
`phone` int,
`email`varchar(255),
`office_address` varchar(255),
primary key(`id`)
);

create table courses_teachers (
courses_id int not null,
teachers_id int not null,
primary key (courses_id , teachers_id),
foreign key(courses_id) references courses(id),
foreign key(teachers_id) references teachers(id)
);

create table exams (
id int not null auto_increment,
`date` date not null,
`hour` time not null,
location varchar(255) not null,
address varchar(255) not null,
courses_id int not null,
primary key (id),
foreign key(courses_id) references courses(id)
);

create table student (
id int not null auto_increment,
name varchar(255)not null,
surname varchar(255)not null,
date_of_birth date not null,
fiscal_code varchar(255)not null,
enrolment_date date not null,
registration_number int not null,
email varchar(255),
degrees_id int not null,
primary key(id),
foreign key(degrees_id)references degrees(id)
);

create table vote (
student_id int not null,
exams_id int not null,
vote int not null,
primary key (student_id , exams_id),
foreign key (student_id) references student(id),
foreign key (exams_id) references exams(id)
);