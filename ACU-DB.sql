-- ACU Database System 
-- Creating Database for Aharam Candian University as a part for the Database course at ACU 

-- ------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------  Create Database file --------------------------------------------------------
-- ------------------------------------------------------------------------------------------------------------------------------------------------------------


create database if not exists `ACU DB`;
use `ACU DB`;


-- --------------------------------------------------------------
-- Table Structure For Department
drop 
  Table if exists `department`;
create Table `department` (
  `departmentID` int(11) not null, 
  `departmentName` varchar(45) not null, 
  `description` varchar(45) not null, 
  `budget` varchar(45) not null, 
  `officeNo` varchar(15) NOT NULL, 
  PRIMARY KEY (`departmentID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Employee
drop 
  Table if exists `employee`;
create Table `employee`(
  `employeeID` int(11) not null, 
  `firstName` varchar(45) not null, 
  `lastName` varchar(45) not null, 
  `middleName` varchar(45) DEFAULT null, 
  `contactNo` varchar(15) not null, 
  `address` varchar(45) not null, 
  `hiringDate` date not null, 
  `ssn` varchar(9) not null, 
  `departmentID` int (11) not null, 
  PRIMARY KEY (`employeeID`), 
  KEY `fk_departmentID_id` (`departmentID`), 
  CONSTRAINT `fk_departmentID_employee` FOREIGN KEY (`departmentID`) REFERENCES `department`(`departmentID`) on DELETE no ACTION on UPDATE no ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Admin
drop 
  Table if exists `admin`;
create Table if not exists `admin` (
  `adminID` int(11) not null, 
  `designation` varchar(45) not null, 
  PRIMARY KEY (`adminID`), 
  CONSTRAINT `fk_administratorID_admin` FOREIGN KEY (`adminID`) REFERENCES `employee`(`employeeID`) on DELETE no ACTION on UPDATE no ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Advisor
drop 
  table if exists `advisor`;
create table `advisor`(
  `advisorID` int(11) not null, 
  PRIMARY KEY(`advisorID`), 
  CONSTRAINT `fk_advisorID` FOREIGN KEY (`advisorID`) REFERENCES `employee` (`employeeID`) on DELETE no ACTION on UPDATE no ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Author
drop 
  table if exists `author`;
create table `author`(
  `authorID` int(11) not null, 
  `firstName` varchar(45) not null, 
  `lastName` varchar(45) not null, 
  `authorDetails` varchar(45) DEFAULT null, 
  PRIMARY KEY(`authorID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Course
drop 
  table if exists `course`;
create table `course`(
  `courseID` int(11) not null, 
  `courseName` varchar(45) not null, 
  `credit` smallint(6), 
  `hours` smallint(6), 
  `description` varchar(45) not null, 
  `departmentID` int(11) not null, 
  `noOfClasses` smallint(6) not null, 
  `noOfSeats` smallint(6) not null, 
  PRIMARY KEY (`courseID`), 
  KEY `fk_departmentID_id`(`departmentID`), 
  CONSTRAINT `fk_departmentID_id` FOREIGN KEY (`departmentID`) REFERENCES `department` (`departmentID`) on DELETE no ACTION on UPDATE no ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Instructor
drop 
  table if exists `instructor`;
create table `instructor`(
  `instructorID` int(11) not null, 
  `email` varchar(45) not null, 
  PRIMARY KEY (`instructorID`), 
  CONSTRAINT `fk_instructorID` FOREIGN KEY (`instructorID`) REFERENCES `employee` (`employeeID`) on DELETE no ACTION on UPDATE no ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Section
drop 
  table if exists `section`;
create table `section`(
  `sectionID` int(11) not null, 
  `courseID` int(11) not null, 
  `sectionName` varchar(45) not null, 
  `instructorID` int(11) not null, 
  PRIMARY KEY (`sectionID`), 
  key `fk_courseID` (`courseID`), 
  key `fk_instructorID`(`instructorID`), 
  key `fk_sectionID_indx`(`sectionID`), 
  CONSTRAINT `fk_courseID_section` FOREIGN key (`courseID`) REFERENCES `course` (`courseID`) on DELETE no ACTION on UPDATE no ACTION, 
  CONSTRAINT `fk_instructorID_section` FOREIGN key (`instructorID`) REFERENCES `instructor`(`instructorID`) on DELETE no ACTION on UPDATE no ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Assignment
drop 
  table if exists `assignment`;
create table `assignment`(
  `assignmentID` int(11) not null, 
  `sectionID` int (11) not null, 
  `description` varchar(45) not null, 
  `deadLineDate` date not null, 
  `deadLineTime` time not null, 
  `points` smallint(6) not null, 
  PRIMARY key(`assignmentID`), 
  key `fk_sectionID_indx`(`sectionID`), 
  CONSTRAINT `fk_sectionID_indx` foreign key(`sectionID`) REFERENCES `section`(`sectionID`) on DELETE no ACTION on UPDATE no ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Building
drop 
  table if exists `building`;
create table `building`(
  `buildingID` int (11) not null, 
  `buildingName` varchar(45) not null, 
  PRIMARY key (`buildingID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Room
drop 
  table if exists `room`;
create table `room`(
  `roomID` int(11) not null, 
  `roomName` varchar(45) not null, 
  `buildingID` int(11) not null, 
  `capcity` smallint(6) not null, 
  PRIMARY key (`roomID`), 
  key `fk_buildingID_indx`(`buildingID`), 
  CONSTRAINT `fk_buildingID_indx` foreign key (`buildingID`) REFERENCES `building` (`buildingID`) on DELETE no ACTION on UPDATE no ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Guardian
drop 
  table if exists `guardiand`;
create table `guardian`(
  `guardianID` int(11) NOT NULL, 
  `firstName` varchar(45) NOT NULL, 
  `lastName` varchar(45) NOT NULL, 
  `middleName` varchar(45) DEFAULT NULL, 
  `address` varchar(45) NOT NULL, 
  `contactNo` varchar(15) NOT NULL, 
  PRIMARY KEY (`guardianID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Librarian
drop 
  table if exists `librarian`;
create table `librarian`(
  `librarianID` int(11) NOT NULL, 
  PRIMARY KEY (`librarianID`), 
  CONSTRAINT `fk_librarianID_indx` foreign key (`librarianID`) REFERENCES `employee`(`employeeID`) on DELETE no ACTION on UPDATE no ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Major Department
DROP 
  TABLE IF EXISTS `majordepartment`;
create table `majordepartment`(
  `majorID` int(11) not null, 
  PRIMARY key (`majorID`), 
  CONSTRAINT `fk_majorID_indx` foreign key (`majorID`) REFERENCES `department` (`departmentID`) on DELETE no ACTION on UPDATE no ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Minor Department
DROP 
  TABLE IF EXISTS `minordepartment`;
CREATE TABLE `minordepartment` (
  `minorID` int(11) NOT NULL, 
  PRIMARY KEY (`minorID`), 
  CONSTRAINT `fk_minorID_indx` FOREIGN KEY (`minorID`) REFERENCES `department` (`departmentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For PartTime_Job
DROP 
  TABLE IF EXISTS `parttimejob`;
CREATE TABLE `parttimejob` (
  `jobID` int(11) NOT NULL, 
  `type` varchar(45) NOT NULL, 
  `hours` smallint(6) NOT NULL, 
  `position` varchar(45) NOT NULL, 
  `companyName` varchar(45) NOT NULL, 
  PRIMARY KEY (`jobID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Author
DROP 
  TABLE IF EXISTS `author`;
CREATE TABLE `author` (
  `authorID` int(11) NOT NULL, 
  `firstName` varchar(45) NOT NULL, 
  `lastName` varchar(45) NOT NULL, 
  `authorDetails` varchar(45) DEFAULT NULL, 
  PRIMARY KEY (`authorID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Books
DROP 
  TABLE IF EXISTS `books`;
CREATE TABLE `books` (
  `bookID` int(11) NOT NULL, 
  `bookName` varchar(45) NOT NULL, 
  `description` varchar(45) NOT NULL, 
  PRIMARY KEY (`bookID`), 
  KEY `book_Idx` (`bookID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Books Has Copies
DROP 
  TABLE IF EXISTS `book_has_copies`;
CREATE TABLE `book_has_copies` (
  `copyNo` int(11) NOT NULL, 
  `bookID` int(11) NOT NULL, 
  `status` varchar(45) DEFAULT NULL, 
  PRIMARY KEY (`copyNo`), 
  KEY `fk_bookID_copies` (`bookID`), 
  CONSTRAINT `fk_bookID_copies` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Books Has Author
DROP 
  TABLE IF EXISTS `books_has_author`;
CREATE TABLE `books_has_author` (
  `books_bookID` int(11) NOT NULL, 
  `author_authorID` int(11) NOT NULL, 
  PRIMARY KEY (
    `books_bookID`, `author_authorID`
  ), 
  KEY `fk_books_has_author_author1_idx` (`author_authorID`), 
  KEY `fk_books_has_author_books1_idx` (`books_bookID`), 
  CONSTRAINT `fk_books_has_author_books1` FOREIGN KEY (`books_bookID`) REFERENCES `books` (`bookID`) ON DELETE NO ACTION ON UPDATE NO ACTION, 
  CONSTRAINT `fk_books_has_author_author1` FOREIGN KEY (`author_authorID`) REFERENCES `author` (`authorID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For COOP
DROP 
  TABLE IF EXISTS `coop`;
CREATE TABLE `coop` (
  `coopID` int(11) NOT NULL, 
  `type` varchar(45) NOT NULL, 
  `hours` smallint(6) NOT NULL, 
  `position` varchar(45) NOT NULL, 
  `companyName` varchar(45) NOT NULL, 
  PRIMARY KEY (`coopID`)
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Department Has Advisor
DROP 
  TABLE IF EXISTS `department_has_advisor`;
CREATE TABLE `department_has_advisor` (
  `advisorID` int(11) NOT NULL, 
  `departmentID` int(11) NOT NULL, 
  PRIMARY KEY (`advisorID`, `departmentID`), 
  KEY `fk_advisor_has_department_department1_idx` (`departmentID`), 
  KEY `fk_advisor_has_department_advisor1_idx` (`advisorID`), 
  CONSTRAINT `fk_advisor_has_department_advisor1` FOREIGN KEY (`advisorID`) REFERENCES `advisor` (`advisorID`) ON DELETE NO ACTION ON UPDATE NO ACTION, 
  CONSTRAINT `fk_advisor_has_department_department1` FOREIGN KEY (`departmentID`) REFERENCES `department` (`departmentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Employee Salary Details
DROP 
  TABLE IF EXISTS `employee_salarydetails`;
CREATE TABLE `employee_salarydetails` (
  `accountID` int(11) NOT NULL, 
  `date_on_bill` date NOT NULL, 
  `employeeID` int(11) NOT NULL, 
  `accountName` varchar(45) NOT NULL, 
  `salary` float NOT NULL, 
  `deductions` float NOT NULL, 
  `tax` float NOT NULL, 
  PRIMARY KEY (`accountID`, `date_on_bill`), 
  KEY `fk_employeeID_salary_idx` (`employeeID`), 
  CONSTRAINT `fk_employeeID_salary` FOREIGN KEY (`employeeID`) REFERENCES `employee` (`employeeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Grade Report
DROP 
  TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `studentID` int(11) NOT NULL, 
  `firstName` varchar(45) NOT NULL, 
  `middleName` varchar(45) DEFAULT NULL, 
  `lastName` varchar(45) NOT NULL, 
  `ssn` varchar(9) DEFAULT NULL, 
  `dob` date NOT NULL, 
  `currentAddress` varchar(45) NOT NULL, 
  `sex` enum('Male', 'Female') NOT NULL, 
  `currentPhoneNo` varchar(15) NOT NULL, 
  `email` varchar(45) NOT NULL, 
  `departmentID` int(11) NOT NULL, 
  `guadianID` int(11) NOT NULL, 
  PRIMARY KEY (`studentID`), 
  KEY `fk_departmentID_idx` (`departmentID`), 
  KEY `fk_guardianID_idx` (`guadianID`), 
  KEY `student_Idx` (`studentID`), 
  CONSTRAINT `fk_departmentID_student` FOREIGN KEY (`departmentID`) REFERENCES `department` (`departmentID`) ON DELETE NO ACTION ON UPDATE NO ACTION, 
  CONSTRAINT `fk_guardianID_student` FOREIGN KEY (`guadianID`) REFERENCES `guardian` (`guardianID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Grade Report
DROP 
  TABLE IF EXISTS `gradereport`;
CREATE TABLE `gradereport` (
  `reportID` int(11) NOT NULL, 
  `courseID` int(11) NOT NULL, 
  `studentID` int(11) NOT NULL, 
  `attempt` tinyint(4) NOT NULL DEFAULT '1', 
  `letterGrade` enum(
    'A', 'A-', 'B+', 'B', 'B-', 'C+', 'C', 
    'F'
  ) NOT NULL, 
  `numericGrade` float NOT NULL, 
  `semester` varchar(45) NOT NULL, 
  `year` year(4) NOT NULL, 
  PRIMARY KEY (`reportID`), 
  KEY `fk_studentID_idx` (`studentID`), 
  KEY `fk_courseID_idx` (`courseID`), 
  CONSTRAINT `fk_courseID_report` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`) ON DELETE NO ACTION ON UPDATE NO ACTION, 
  CONSTRAINT `fk_studentID_report` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Instructor Has Books
DROP 
  TABLE IF EXISTS `instructor_has_books`;
CREATE TABLE `instructor_has_books` (
  `instructorID` int(11) NOT NULL, 
  `copyNo` int(11) NOT NULL, 
  `issueDate` date NOT NULL, 
  `returnDate` date DEFAULT NULL, 
  PRIMARY KEY (`instructorID`, `copyNo`), 
  KEY `fk_instructor_has_books_instructor1_idx` (`instructorID`), 
  KEY `fk_copyNo_has_idx` (`copyNo`), 
  CONSTRAINT `fk_instructor_has_books_instructor1` FOREIGN KEY (`instructorID`) REFERENCES `instructor` (`instructorID`) ON DELETE NO ACTION ON UPDATE NO ACTION, 
  CONSTRAINT `fk_copyNo_has` FOREIGN KEY (`copyNo`) REFERENCES `book_has_copies` (`copyNo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Insurance Record
DROP 
  TABLE IF EXISTS `insurancerecord`;
CREATE TABLE `insurancerecord` (
  `insuranceID` int(11) NOT NULL, 
  `issueDate` date NOT NULL, 
  `expiryDate` date NOT NULL, 
  `amountCovered` float NOT NULL, 
  `studentID` int(11) NOT NULL, 
  PRIMARY KEY (`insuranceID`), 
  KEY `fk_insuranceRecord_student1_idx` (`studentID`), 
  CONSTRAINT `fk_studentID_insurance` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For IsIRecord
DROP 
  TABLE IF EXISTS `issirecord`;
CREATE TABLE `issirecord` (
  `recordID` int(11) NOT NULL, 
  `permAddress` varchar(45) NOT NULL, 
  `permContact` varchar(15) NOT NULL, 
  `i20_No` int(11) NOT NULL, 
  `visaNo` varchar(15) NOT NULL, 
  `visaStatus` varchar(45) NOT NULL, 
  `studentID` int(11) NOT NULL, 
  PRIMARY KEY (`recordID`), 
  KEY `fk_issiRecord_student1_idx` (`studentID`), 
  CONSTRAINT `fk_studentID_issi` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Librarian Maintain Book Stock
DROP 
  TABLE IF EXISTS `librarian_maintains_bookstock`;
CREATE TABLE `librarian_maintains_bookstock` (
  `librarianID` int(11) NOT NULL, 
  `bookID` int(11) NOT NULL, 
  `purchasedFrom` varchar(45) NOT NULL, 
  `amount` float NOT NULL, 
  `quantity` mediumint(9) NOT NULL, 
  PRIMARY KEY (`librarianID`, `bookID`), 
  KEY `fk_bookID_idx` (`bookID`), 
  CONSTRAINT `fk_bookID_maintains` FOREIGN KEY (`bookID`) REFERENCES `books` (`bookID`) ON DELETE NO ACTION ON UPDATE NO ACTION, 
  CONSTRAINT `fk_librarianID_maintains` FOREIGN KEY (`librarianID`) REFERENCES `librarian` (`librarianID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Prerequist
DROP 
  TABLE IF EXISTS `prerequisite`;
CREATE TABLE `prerequisite` (
  `prerequisiteID` int(11) NOT NULL, 
  `name` varchar(45) NOT NULL, 
  `description` varchar(45) NOT NULL, 
  `credits` tinyint(4) NOT NULL, 
  PRIMARY KEY (`prerequisiteID`), 
  CONSTRAINT `fk_prerequisiteID` FOREIGN KEY (`prerequisiteID`) REFERENCES `course` (`courseID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Section DaySlot
DROP 
  TABLE IF EXISTS `section_dayslot`;
CREATE TABLE `section_dayslot` (
  `day` varchar(10) NOT NULL, 
  `sectionID` int(11) NOT NULL, 
  `startTime` time NOT NULL, 
  `endTime` time NOT NULL, 
  PRIMARY KEY (`day`, `sectionID`), 
  KEY `fk_sectionID_idx` (`sectionID`), 
  CONSTRAINT `fk_sectionID_slot` FOREIGN KEY (`sectionID`) REFERENCES `section` (`sectionID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Section In Building
DROP 
  TABLE IF EXISTS `section_in_building`;
CREATE TABLE `section_in_building` (
  `sectionID` int(11) NOT NULL, 
  `buildingID` int(11) NOT NULL, 
  PRIMARY KEY (`sectionID`, `buildingID`), 
  KEY `fk_section_has_building_building1_idx` (`buildingID`), 
  KEY `fk_section_has_building_section1_idx` (`sectionID`), 
  CONSTRAINT `fk_section_has_building_building1` FOREIGN KEY (`buildingID`) REFERENCES `building` (`buildingID`) ON DELETE NO ACTION ON UPDATE NO ACTION, 
  CONSTRAINT `fk_section_has_building_section1` FOREIGN KEY (`sectionID`) REFERENCES `section` (`sectionID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Courses has Prerequisite
DROP 
  TABLE IF EXISTS `course_has_prerequisite`;
CREATE TABLE `course_has_prerequisite` (
  `courseID` int(11) NOT NULL, 
  `prerequisiteID` int(11) NOT NULL, 
  PRIMARY KEY (`courseID`, `prerequisiteID`), 
  KEY `fk_course_has_prerequisite_prerequisite1_idx` (`prerequisiteID`), 
  KEY `fk_course_has_prerequisite_course1_idx` (`courseID`), 
  CONSTRAINT `fk_course_has_prerequisite_course1` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`) ON DELETE NO ACTION ON UPDATE NO ACTION, 
  CONSTRAINT `fk_course_has_prerequisite_prerequisite1` FOREIGN KEY (`prerequisiteID`) REFERENCES `prerequisite` (`prerequisiteID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For diningservices
DROP 
  TABLE IF EXISTS `diningservices`;
CREATE TABLE `diningservices` (
  `diningID` int(11) NOT NULL, 
  `date_of_bill` date NOT NULL, 
  `studentID` int(11) NOT NULL, 
  `totalAmount` float NOT NULL, 
  `amountPaid` float NOT NULL, 
  PRIMARY KEY (`diningID`, `date_of_bill`), 
  KEY `fk_studentID_dining_idx` (`studentID`), 
  CONSTRAINT `fk_studentID_dining` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Bill
DROP 
  TABLE IF EXISTS `ebill`;
CREATE TABLE `ebill` (
  `billID` int(11) NOT NULL, 
  `studentID` int(11) NOT NULL, 
  `date_of_payment` date NOT NULL, 
  `description` varchar(45) NOT NULL, 
  `totalAmount` float NOT NULL, 
  `semester` varchar(45) NOT NULL, 
  `year` year(4) NOT NULL, 
  `amountPaid` float NOT NULL, 
  PRIMARY KEY (`billID`), 
  KEY `fk_studentID_idx` (`studentID`), 
  CONSTRAINT `fk_studentID_bill` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Student Acadmic Record
DROP 
  TABLE IF EXISTS `student_academicrecord`;
CREATE TABLE `student_academicrecord` (
  `studentID` int(11) NOT NULL, 
  `pastMajor` varchar(45) NOT NULL, 
  `greScore` mediumint(9) NOT NULL, 
  `toeflScore` mediumint(9) NOT NULL, 
  `pastGPA` float NOT NULL, 
  `workEx` varchar(20) NOT NULL DEFAULT '0', 
  `currentGPA` float NOT NULL, 
  PRIMARY KEY (`studentID`), 
  KEY `fk_student_academicRecord_student1_idx` (`studentID`), 
  CONSTRAINT `fk_studentID_acads` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Student Student COOP
DROP 
  TABLE IF EXISTS `student_has_coop`;
CREATE TABLE `student_has_coop` (
  `student_studentID` int(11) NOT NULL, 
  `coop_coopID` int(11) NOT NULL, 
  `startDate` date NOT NULL, 
  `endDate` date NOT NULL, 
  `salary` float NOT NULL, 
  PRIMARY KEY (
    `student_studentID`, `coop_coopID`
  ), 
  KEY `fk_student_has_coop_coop1_idx` (`coop_coopID`), 
  KEY `fk_student_has_coop_student1_idx` (`student_studentID`), 
  CONSTRAINT `fk_student_has_coop_coop1` FOREIGN KEY (`coop_coopID`) REFERENCES `coop` (`coopID`) ON DELETE NO ACTION ON UPDATE NO ACTION, 
  CONSTRAINT `fk_student_has_coop_student1` FOREIGN KEY (`student_studentID`) REFERENCES `student` (`studentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Student Student Has A Parttime Job
DROP 
  TABLE IF EXISTS `student_has_part_time_job`;
CREATE TABLE `student_has_part_time_job` (
  `studentID` int(11) NOT NULL, 
  `jobID` int(11) NOT NULL, 
  `startDate` date NOT NULL, 
  `endDate` date DEFAULT NULL, 
  `salary` float NOT NULL, 
  PRIMARY KEY (`studentID`, `jobID`), 
  KEY `fk_jobID_idx` (`jobID`), 
  CONSTRAINT `fk_jobID_parttime` FOREIGN KEY (`jobID`) REFERENCES `parttimejob` (`jobID`) ON DELETE NO ACTION ON UPDATE NO ACTION, 
  CONSTRAINT `fk_studentID_parttime` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Student Student Has Issuse With Books
DROP 
  TABLE IF EXISTS `student_issues_books`;
CREATE TABLE `student_issues_books` (
  `copyNo` int(11) NOT NULL, 
  `studentID` int(11) NOT NULL, 
  `issueDate` date NOT NULL, 
  `returnDate` date DEFAULT NULL, 
  PRIMARY KEY (`copyNo`, `studentID`), 
  KEY `fk_book_has_copies_has_student_student1_idx` (`studentID`), 
  KEY `fk_book_has_copies_has_student_book_has_copies1_idx` (`copyNo`), 
  CONSTRAINT `fk_book_has_copies_has_student_book_has_copies1` FOREIGN KEY (`copyNo`) REFERENCES `book_has_copies` (`copyNo`) ON DELETE NO ACTION ON UPDATE NO ACTION, 
  CONSTRAINT `fk_book_has_copies_has_student_student1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Student Student Maintaining Attendance
DROP 
  TABLE IF EXISTS `student_maintains_attendance`;
CREATE TABLE `student_maintains_attendance` (
  `studentID` int(11) NOT NULL, 
  `courseID` int(11) NOT NULL, 
  `date` date NOT NULL, 
  `count` smallint(6) NOT NULL, 
  PRIMARY KEY (`studentID`, `courseID`, `date`), 
  KEY `fk_courseID_idx` (`courseID`), 
  CONSTRAINT `fk_courseID_attendance` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`) ON DELETE NO ACTION ON UPDATE NO ACTION, 
  CONSTRAINT `fk_studentID_attendance` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Student Student Register Courses
DROP 
  TABLE IF EXISTS `student_registers_courses`;
CREATE TABLE `student_registers_courses` (
  `studentID` int(11) NOT NULL, 
  `courseID` int(11) NOT NULL, 
  `registrationDate` date NOT NULL, 
  PRIMARY KEY (
    `studentID`, `courseID`, `registrationDate`
  ), 
  KEY `fk_student_has_course_course1_idx` (`courseID`), 
  KEY `fk_student_has_course_student1_idx` (`studentID`), 
  CONSTRAINT `fk_student_has_course_student1` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE NO ACTION ON UPDATE NO ACTION, 
  CONSTRAINT `fk_student_has_course_course1` FOREIGN KEY (`courseID`) REFERENCES `course` (`courseID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
-- --------------------------------------------------------------
-- Table Structure For Student Student Submit Assignment
DROP 
  TABLE IF EXISTS `student_submit_assignment`;
CREATE TABLE `student_submit_assignment` (
  `assignmentID` int(11) NOT NULL, 
  `studentID` int(11) NOT NULL, 
  `evaluationDate` date DEFAULT NULL, 
  `pointsObtained` tinyint(4) DEFAULT NULL, 
  `writtenEvaluation` varchar(45) DEFAULT '-', 
  `submissionDate` date NOT NULL, 
  `submissionTime` time NOT NULL, 
  PRIMARY KEY (`assignmentID`, `studentID`), 
  KEY `fk_studentID_idx` (`studentID`), 
  CONSTRAINT `fk_assignmentID_submit` FOREIGN KEY (`assignmentID`) REFERENCES `assignment` (`assignmentID`) ON DELETE NO ACTION ON UPDATE NO ACTION, 
  CONSTRAINT `fk_studentID_submit` FOREIGN KEY (`studentID`) REFERENCES `student` (`studentID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
