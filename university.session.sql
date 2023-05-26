CREATE TABLE groups (
    name varchar(64) CHECK ( name != '' ) PRIMARY KEY,
    faculty_id varchar(64) REFERENCES faculties(name)
);

CREATE TABLE students (
    first_name varchar(64) NOT NULL CHECK ( first_name != '' ),
    last_name varchar(64) NOT NULL CHECK ( last_name != '' ),
    ticket_number serial  PRIMARY KEY ,
    group_name varchar(64) REFERENCES groups(name)

);

CREATE TABLE faculties (
    name varchar(64) CHECK ( name != '' ) PRIMARY KEY
);

CREATE TABLE subjects (
    name varchar(64) CHECK ( name != '' ) PRIMARY KEY
);

CREATE TABLE exams (
   student_id int REFERENCES students(ticket_number),
   subject varchar(64) REFERENCES subjects(name),
   grade int NOT NULL,
   PRIMARY KEY (student_id, subject)
);