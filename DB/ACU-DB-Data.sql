-- ACU Database System 



-- ------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------  Insering Data For ACU Database file ---------------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------


use `ACU DB`;


-- --------------------------------------------------------------
-- filling data for the Department table
LOCK TABLES `department` WRITE;
INSERT INTO `department` 
VALUES 
  (
    100, 'College of Engineering', 'This is a Graduate School.', 
    '10000', '2541369857'
  ), 
  (
    101, 'College of Computer Science', 
    'This is a Graduate School', '20000', 
    '6541232589'
  ), 
  (
    102, 'College of Professional Studies', 
    'Thsi is an Undergraduate and Graduate School', 
    '30000', '5412879632'
  ), 
  (
    103, 'Department of Finance', 'Maintains staff and student Finance records', 
    '1000', '7531598524'
  ), 
  (
    104, 'Department of Registrar', 'Maintain student and staff record', 
    '1000', '3571598745'
  ), 
  (
    105, 'Department of Health Services', 
    'Maintain insurance record of students', 
    '3000', '1233211232'
  ), 
  (
    106, 'Library Affairs', 'Library maintainance', 
    '10000', '1235245232'
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Employee table
LOCK TABLES `employee` WRITE;
INSERT INTO `employee` 
VALUES 
  (
    4000, 'marc', 'ha', NULL, '1474147414', 
    'Mumbai', '2013-12-12', '147414741', 
    100
  ), 
  (
    4001, 'ahmed', 'mahmoud', NULL, '2587412587', 
    'Delhi', '2012-03-26', '258741258', 
    101
  ), 
  (
    4002, 'andrew', 'emad', NULL, '7898789878', 
    'Bangaluru', '2011-08-08', '258741255', 
    102
  ), 
  (
    4003, 'saad', 'mona', NULL, '1020304050', 
    'Chennai', '2010-09-09', '102030101', 
    103
  ), 
  (
    4004, 'omar', 'Toledo', NULL, '6541230145', 
    'Kolkata', '2009-02-02', '654123010', 
    100
  ), 
  (
    4005, 'meh', 'mona', NULL, 
    '9515951595', 'Indore', '2008-06-06', 
    '159515951', 104
  ), 
  (
    4006, 'linda', 'moha', NULL, 
    '7535753575', 'Bhopal', '2007-12-12', 
    '125634785', 105
  ), 
  (
    4007, 'joe', 'ma', NULL, '4569852369', 
    'Shimla', '2006-04-04', '412563254', 
    102
  ), 
  (
    4008, 'monica', 'sheldon', NULL, '5874587458', 
    'Pune', '2013-06-28', '785478547', 
    105
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Admin table
LOCK TABLES `admin` WRITE;
INSERT INTO `admin` 
VALUES 
  (
    4006, 'Director of Counseling and Health Services'
  ), 
  (
    4008, 'Director of Finance Department'
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Advisor table
LOCK TABLES `advisor` WRITE;
INSERT INTO `advisor` 
VALUES 
  (4000), 
  (4001), 
  (4007);
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Author table
LOCK TABLES `author` WRITE;
INSERT INTO `author` 
VALUES 
  (
    909091, 'Russell', 'Hibbeler', 'Published Engineering Mechanics'
  ), 
  (
    909092, 'Bjarne', 'Stroustrup', 'Published C++'
  ), 
  (
    909093, 'James', 'Kurose', 'Published Computer Networking'
  ), 
  (
    909094, 'Keith', 'Ross', 'Published Computer Networking'
  ), 
  (
    909095, 'Abi', 'Aghayere', 'Published Structural Steel Design'
  ), 
  (
    909096, 'Jason', 'Vigil', 'Published Structural Steel Design'
  ), 
  (
    909097, 'Susan', 'Reidel', 'Published Electric Circuits and C++'
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Author table
LOCK TABLES `course` WRITE;
INSERT INTO `course` 
VALUES 
  (
    2000, 'Application Engineering', 
    4, 60, 'AED', 100, 10, 120
  ), 
  (
    2001, 'Web Design', 4, 60, 'WD', 100, 
    20, 30
  ), 
  (
    2002, 'Business Analysis', 4, 60, 'BA', 
    101, 12, 40
  ), 
  (
    2003, 'Database Management', 4, 70, 
    'DB', 100, 11, 80
  ), 
  (
    2004, 'Web Tools', 4, 80, 'WT', 102, 
    22, 60
  ), 
  (
    2005, 'Network Engineering', 4, 40, 
    'NE', 101, 18, 100
  ), 
  (
    2006, 'Project Management', 4, 75, 
    'PM', 100, 25, 40
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Instructor table
LOCK TABLES `instructor` WRITE;
INSERT INTO `instructor` 
VALUES 
  (4000, 'marc@gmail.com'), 
  (4001, 'ahmed@gmail.com'), 
  (4002, 'andrew@aol.com'), 
  (4004, 'omar@yahoo.com'), 
  (4007, 'lorine@gmail.com');
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Section table
LOCK TABLES `section` WRITE;
INSERT INTO `section` 
VALUES 
  (20000, 2000, 'AED1', 4000), 
  (20010, 2001, 'WD1', 4000), 
  (20011, 2001, 'WD2', 4000), 
  (20020, 2002, 'BA1', 4001), 
  (20030, 2003, 'DB1', 4004), 
  (20040, 2004, 'WT1', 4007), 
  (20050, 2005, 'NE1', 4001);
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Assignment table
LOCK TABLES `assignment` WRITE;
INSERT INTO `assignment` 
VALUES 
  (
    2000050, 20000, 'aed1hw', '2014-04-18', 
    '23:59:59', 100
  ), 
  (
    2001050, 20010, 'wd1hw', '2014-04-19', 
    '23:59:59', 100
  ), 
  (
    2001150, 20011, 'wd2hw', '2014-04-20', 
    '00:00:00', 100
  ), 
  (
    2002050, 20020, 'ba1hw', '2014-04-21', 
    '23:00:00', 50
  ), 
  (
    2003050, 20030, 'db1hw', '2014-04-22', 
    '23:59:59', 100
  ), 
  (
    2004050, 20040, 'wt1hw', '2014-04-22', 
    '23:59:59', 100
  ), 
  (
    2005050, 20050, 'ne1hw', '2014-04-23', 
    '23:59:59', 100
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Building table
LOCK TABLES `building` WRITE;
INSERT INTO `building` 
VALUES 
  (50, 'me Hall'), 
  (51, '101 Hall'), 
  (52, '102 Hall'), 
  (53, '103 Engineering Hall'), 
  (54, '201 Hall');
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Room table
LOCK TABLES `room` WRITE;
INSERT INTO `room` 
VALUES 
  (500, 'room1', 50, 50), 
  (510, 'room1', 51, 50), 
  (520, 'room1', 52, 60), 
  (521, 'room2', 52, 80), 
  (530, 'room1', 53, 100);
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Guardian table
LOCK TABLES `guardian` WRITE;
INSERT INTO `guardian` 
VALUES 
  (
    1000, 'Mahmoud', 'saad', NULL, 'Cairo', 
    '7894561373'
  ), 
  (
    1001, 'andrew', 'Mahmoud', 'sam', 
    'Cairo', '9874563215'
  ), 
  (
    1002, 'mohamed', 'Mahmoud', NULL, 'Cairo', 
    '7412589632'
  ), 
  (
    1003, 'ahmed', 'Mahmoud', 'mohamed', 
    'Cairo', '6547893215'
  ), 
  (
    1004, 'ahmed', 'Mahmoud', NULL, 'Cairo', 
    '3214568524'
  ), 
  (
    1005, 'ahmed', 'Mahmoud', NULL, 'Cairo', 
    '7413698524'
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the librarian table
LOCK TABLES `librarian` WRITE;
INSERT INTO `librarian` 
VALUES 
  (4004), 
  (4005);
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Major Department table
LOCK TABLES `majordepartment` WRITE;
INSERT INTO `majordepartment` 
VALUES 
  (100), 
  (101);
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Minor Department table
LOCK TABLES `minordepartment` WRITE;
INSERT INTO `minordepartment` 
VALUES 
  (102);
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Major Department table
LOCK TABLES `parttimejob` WRITE;
INSERT INTO `parttimejob` 
VALUES 
  (
    600, 'Cashier', 35, 'Cashier', 'Wollaston'
  ), 
  (601, 'Rso', 40, 'Proctor', 'RSO'), 
  (
    602, 'Tech Support', 40, 'Technical Support', 
    'acu IT desk'
  ), 
  (
    603, 'Waitor', 40, 'Waitor', 'Arbor Pain'
  ), 
  (
    604, 'Librarian assistance', 40, 'Librarian', 
    'acu Library'
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the  Author table
LOCK TABLES `author` WRITE;
INSERT INTO `author` 
VALUES 
  (
    1, 'Mhmaoud', 'marc', 'Published Engineering Mechanics'
  ), 
  (
    2, 'Mhmaoud', 'mohamed', 'Published C++'
  ), 
  (
    3, 'Mhmaoud', 'mohamed', 'Published Computer Networking'
  ), 
  (
    4, 'Mhmaoud', 'mohamed', 'Published Computer Networking'
  ), 
  (
    5, 'ahmed', 'mohamed', 'Published Structural Steel Design'
  ), 
  (
    6, 'ahmed', 'Mhmaoud', 'Published Structural Steel Design'
  ), 
  (
    7, 'Susan', 'Mhmaoud', 'Published Electric Circuits and C++'
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for theBooks table
LOCK TABLES `books` WRITE;
INSERT INTO `books` 
VALUES 
  (
    808080, 'C++ Programming Launguage', 
    'For IS and CS'
  ), 
  (
    808081, 'Engineering Mechanics', 
    'For ME'
  ), 
  (
    808082, 'Computer Networking', 'For TSM'
  ), 
  (
    808083, 'Electric Circuits', 'For EC'
  ), 
  (
    808084, 'Structural Steel Design', 
    'For Civil'
  );
UNLOCK TABLES ;
-- --------------------------------------------------------------
-- filling data for the  Book Has Copies table
LOCK TABLES `book_has_copies` WRITE;
INSERT INTO `book_has_copies` 
VALUES 
  (8080801, 808080, NULL), 
  (8080802, 808080, NULL), 
  (8080811, 808081, NULL), 
  (8080821, 808082, NULL), 
  (8080831, 808083, NULL), 
  (8080841, 808084, 'Available');
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Books Has Author table
LOCK TABLES `books_has_author` WRITE;
INSERT INTO `books_has_author` 
VALUES 
  (808081, 909091), 
  (808080, 909092), 
  (808082, 909093), 
  (808082, 909094), 
  (808084, 909095), 
  (808084, 909096), 
  (808080, 909097), 
  (808083, 909097);
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the COOP table
LOCK TABLES `coop` WRITE;
INSERT INTO `coop` 
VALUES 
  (
    500, '4 months', 40, 'Software Developer', 
    'Communispace'
  ), 
  (
    501, '8 month', 40, 'Software Engineer', 
    'Akamai'
  ), 
  (
    502, '6 month', 40, 'Web Developer', 
    'Amazon'
  ), 
  (
    503, '6 month', 40, 'Front End Developer', 
    'A10'
  ), 
  (
    504, '8 month', 40, 'Network Engineer', 
    'Juniper'
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Department Has Advisor table
LOCK TABLES `department_has_advisor` WRITE;
INSERT INTO `department_has_advisor` 
VALUES 
  (4000, 100), 
  (4001, 101), 
  (4001, 102), 
  (4007, 102);
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Employee Salary Details table
LOCK TABLES `employee_salarydetails` WRITE;
INSERT INTO `employee_salarydetails` 
VALUES 
  (
    125, '2014-02-02', 4002, 'santander', 
    110000, 0, 13
  ), 
  (
    258, '2013-02-01', 4001, 'citizen', 
    100000, 25, 12.25
  ), 
  (
    745, '2012-11-14', 4000, 'boa', 119500, 
    0, 13.75
  ), 
  (
    745, '2012-12-12', 4000, 'boa', 120000, 
    75, 13.75
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Student table
LOCK TABLES `student` WRITE;
INSERT INTO `student` 
VALUES 
  (
    1907894, 'Mahmoud', NULL, 'Moore', NULL, 
    '1990-03-12', 'Cairo', 'Male', 
    '1236541256', 'Mahmoud@acu.edu', 101, 
    1000
  ), 
  (
    1907895, 'marc', NULL, 'Waffic', 
    NULL, '1991-12-25', 'Cairo', 
    'Male', '5478547854', 'Marc@acu.edu', 
    101, 1001
  ), 
  (
    1907896, 'Mayra', '', 'walliam', NULL, 
    '1992-06-06', 'alex', 'Female', 
    '1233214565', 'mayra@acu.edu', 102, 
    1002
  ), 
  (
    1907897, 'Tona', NULL, 'monic', 
    NULL, '1985-05-05', 'alex', 'Female', 
    '4566544569', 'tona@acu.edu', 102, 
    1002
  ), 
  (
    1907898, 'mona', NULL, 'mahmoud', NULL, 
    '1992-07-25', 'Beijing', 'Female', 
    '5412145632', 'mona@acu.edu', 101, 
    1003
  ), 
  (
    1907899, 'mahmoud', NULL, 'emad', 
    NULL, '1993-08-08', 'Paris', 'Male', 
    '2585258525', 'mahmoud@acu.edu', 
    100, 1004
  ), 
  (
    1907900, 'youssef', 'Sal', 'emad', 
    '789654123', '1994-02-01', 'alex', 
    'Male', '7458963215', 'youssef@acu.edu', 
    101, 1005
  ), 
  (
    1907901, 'Andrew', NULL, 'mahmoud', 
    '654456987', '1991-03-24', 'cairo', 
    'Female', '6544569877', 'Andrew@acu.edu', 
    100, 1005
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Grade Report table
LOCK TABLES `gradereport` WRITE;
INSERT INTO `gradereport` 
VALUES 
  (
    101010, 2000, 1907894, 1, 'C', 2.4, 'Fall', 
    2013
  ), 
  (
    101011, 2000, 1907894, 2, 'A-', 3.7, 
    'Spring', 2014
  ), 
  (
    101012, 2001, 1907894, 1, 'B+', 3.4, 
    'Fall', 2013
  ), 
  (
    101013, 2001, 1907895, 1, 'B', 3, 'Fall', 
    2012
  ), 
  (
    101014, 2002, 1907896, 1, 'A-', 3.7, 
    'Summer', 2013
  ), 
  (
    101015, 2002, 1907897, 1, 'A', 4, 'Fall ', 
    2013
  ), 
  (
    101016, 2002, 1907898, 1, 'A', 4, 'Fall', 
    2014
  ), 
  (
    101017, 2003, 1907898, 1, 'A-', 3.7, 
    'Fall', 2014
  ), 
  (
    101018, 2004, 1907899, 1, 'B', 3, 'Fall', 
    2014
  ), 
  (
    101019, 2005, 1907900, 1, 'A', 4, 'Fall', 
    2014
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Instructor Has Books table
LOCK TABLES `instructor_has_books` WRITE;
INSERT INTO `instructor_has_books` 
VALUES 
  (4001, 8080821, '2014-04-01', NULL), 
  (
    4001, 8080841, '2014-03-12', '2014-03-24'
  ), 
  (4007, 8080831, '2013-12-15', NULL);
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Insurance Record table
LOCK TABLES `insurancerecord` WRITE;
INSERT INTO `insurancerecord` 
VALUES 
  (
    321456, '2014-05-05', '2017-05-05', 
    10000, 1907894
  ), 
  (
    321457, '2014-03-03', '2018-03-03', 
    20000, 1907895
  ), 
  (
    321458, '2014-01-01', '2019-01-01', 
    30000, 1907896
  ), 
  (
    321459, '2013-06-06', '2020-06-06', 
    40000, 1907897
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the IsIRecord table
LOCK TABLES `issirecord` WRITE;
INSERT INTO `issirecord` 
VALUES 
  (
    700000, 'Egypt', '9874569857', 700000, 
    'abc100', 'F1', 1907894
  ), 
  (
    700001, 'China', '7896544565', 700001, 
    'abc101', 'H1', 1907895
  ), 
  (
    700002, 'France', '4565874589', 700002, 
    'abc102', 'F1', 1907896
  ), 
  (
    700003, 'Lebanon', '2587456925', 700003, 
    'abc103', 'H1', 1907897
  ), 
  (
    700004, 'US', '2145214452', 700004, 
    'abc104', 'US Citizen', 1907898
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Librarian Maintain Books table
LOCK TABLES `librarian_maintains_bookstock` WRITE;
INSERT INTO `librarian_maintains_bookstock` 
VALUES 
  (4004, 808080, 'abc', 20.2, 2), 
  (4004, 808081, 'qwe', 14.5, 1), 
  (4005, 808082, 'hnm', 18, 1);
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Prerequisite table
LOCK TABLES `prerequisite` WRITE;
INSERT INTO `prerequisite` 
VALUES 
  (
    2001, 'WD', '2001 required for 2004', 
    4
  ), 
  (
    2002, 'BA', '2002 required for 2006', 
    4
  ), 
  (
    2003, 'DB', '2003 required for 2000 and 2005', 
    4
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Sectio Slot table
LOCK TABLES `section_dayslot` WRITE;
INSERT INTO `section_dayslot` 
VALUES 
  (
    'Fri', 20000, '14:00:00', '15:00:00'
  ), 
  (
    'Fri', 20011, '13:30:00', '15:30:00'
  ), 
  (
    'Mon', 20010, '14:00:00', '16:00:00'
  ), 
  (
    'Tue', 20011, '13:30:00', '15:30:00'
  ), 
  (
    'Wed', 20010, '14:00:00', '16:00:00'
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the Section In table
LOCK TABLES `section_in_building` WRITE;
INSERT INTO `section_in_building` 
VALUES 
  (20000, 50), 
  (20030, 50), 
  (20010, 51), 
  (20040, 51), 
  (20011, 52), 
  (20020, 53);
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the course_has_prerequisite table
LOCK TABLES `course_has_prerequisite` WRITE;
INSERT INTO `course_has_prerequisite` 
VALUES 
  (2004, 2001), 
  (2006, 2002), 
  (2000, 2003), 
  (2005, 2003);
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the diningservices table
LOCK TABLES `diningservices` WRITE;
INSERT INTO `diningservices` 
VALUES 
  (
    505050, '2014-01-01', 1907894, 500, 
    400
  ), 
  (
    505051, '2013-02-02', 1907898, 500, 
    500
  ), 
  (
    505052, '2012-03-01', 1907900, 600, 
    500
  ), 
  (
    505053, '2012-06-01', 1907899, 550, 
    5250.5
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the ebill table
LOCK TABLES `ebill` WRITE;
INSERT INTO `ebill` 
VALUES 
  (
    900000, 1907894, '2013-07-07', 'sem 1', 
    10000, 'fall', 2013, 10000
  ), 
  (
    900001, 1907894, '2014-05-05', 'sem 3', 
    12000, 'summer', 2014, 2000
  ), 
  (
    900002, 1907895, '2013-07-25', 'sem 2', 
    11250, 'spring', 2014, 11250
  ), 
  (
    900003, 1907896, '2012-07-23', 'sem 1', 
    10050, 'fall', 2012, 10000
  ), 
  (
    900004, 1907897, '2012-07-16', 'sem 1', 
    10050, 'fall', 2012, 10050
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the student_academicrecord table
LOCK TABLES `student_academicrecord` WRITE;
INSERT INTO `student_academicrecord` 
VALUES 
  (
    1907894, 'EC', 100, 100, 3.2, '0', 3.4
  ), 
  (
    1907895, 'CS', 115, 105, 3.1, '1 year', 
    3.3
  ), 
  (
    1907896, 'IT', 112, 102, 3.5, '2.5 years', 
    3.5
  ), 
  (
    1907897, 'CS', 114, 105, 3.6, '2 years', 
    3.6
  ), 
  (
    1907898, 'IT', 107, 99, 3.4, '0', 3.7
  ), 
  (
    1907899, 'CS', 109, 109, 3.1, '3 years', 
    3.8
  ), 
  (
    1907900, 'Civil', 114, 98, 3.4, '0', 
    3.7
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the student_has_coop table
LOCK TABLES `student_has_coop` WRITE;
INSERT INTO `student_has_coop` 
VALUES 
  (
    1907894, 500, '2013-02-25', '2013-10-25', 
    35
  ), 
  (
    1907895, 501, '2013-05-05', '2013-11-05', 
    30
  ), 
  (
    1907896, 502, '2013-04-04', '2013-10-04', 
    32
  ), 
  (
    1907897, 503, '2012-03-20', '2012-09-20', 
    28
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the student_has_part_time_job table
LOCK TABLES `student_has_part_time_job` WRITE;
INSERT INTO `student_has_part_time_job` 
VALUES 
  (
    1907896, 602, '2014-03-03', NULL, 9.2
  ), 
  (
    1907898, 600, '2013-08-05', NULL, 8.75
  ), 
  (
    1907899, 601, '2014-02-01', NULL, 9.99
  ), 
  (
    1907900, 602, '2013-10-20', '2014-03-24', 
    7.45
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the student_issues_books table
LOCK TABLES `student_issues_books` WRITE;
INSERT INTO `student_issues_books` 
VALUES 
  (
    8080801, 1907901, '2013-12-12', '2014-01-12'
  ), 
  (
    8080802, 1907900, '2014-01-11', '2014-01-21'
  ), 
  (
    8080811, 1907894, '2014-02-02', NULL
  ), 
  (
    8080821, 1907894, '2014-01-25', NULL
  ), 
  (
    8080841, 1907894, '2014-01-12', '2014-04-14'
  );
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the student_maintains_attendance table
LOCK TABLES `student_maintains_attendance` WRITE;
INSERT INTO `student_maintains_attendance` 
VALUES 
  (1907894, 2000, '2013-07-07', 7), 
  (1907894, 2000, '2014-08-25', 9), 
  (1907894, 2001, '2013-09-25', 18), 
  (1907895, 2001, '2013-09-12', 19);
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the student_registers_courses table
LOCK TABLES `student_registers_courses` WRITE;
INSERT INTO `student_registers_courses` 
VALUES 
  (1907894, 2000, '2013-04-07'), 
  (1907894, 2000, '2014-05-10'), 
  (1907894, 2001, '2013-04-07'), 
  (1907895, 2001, '2013-04-23'), 
  (1907896, 2002, '2012-06-28'), 
  (1907897, 2002, '2013-08-17'), 
  (1907898, 2002, '2014-05-22'), 
  (1907898, 2003, '2014-05-21'), 
  (1907899, 2004, '2014-05-20'), 
  (1907900, 2005, '2014-04-29');
UNLOCK TABLES;
-- --------------------------------------------------------------
-- filling data for the student_submit_assignment table
LOCK TABLES `student_submit_assignment` WRITE;
INSERT INTO `student_submit_assignment` 
VALUES 
  (
    2000050, 1907894, '2014-04-19', 99, 
    'great job', '2014-04-18', '23:00:00'
  ), 
  (
    2000050, 1907895, '2014-04-11', 100, 
    '-', '2014-04-19', '22:00:00'
  ), 
  (
    2000050, 1907896, NULL, NULL, '-', '2014-04-10', 
    '21:00:00'
  ), 
  (
    2001050, 1907895, '2014-04-20', 90, 
    'null pointer in q1', '2014-04-19', 
    '22:20:20'
  ), 
  (
    2001050, 1907896, '2014-04-20', 92, 
    'null pointer in q2', '2014-04-20', 
    '12:20:20'
  ), 
  (
    2002050, 1907897, '2014-04-25', 45, 
    '-', '2014-04-21', '23:00:01'
  ), 
  (
    2002050, 1907898, NULL, NULL, '-', '2014-04-22', 
    '05:05:05'
  ), 
  (
    2005050, 1907897, '2014-04-30', 95, 
    '-', '2014-04-23', '23:59:58'
  );
UNLOCK TABLES;
