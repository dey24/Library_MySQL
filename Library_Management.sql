CREATE TABLE `book_details` (
  `ISBN_Code` int NOT NULL AUTO_INCREMENT,
  `Book_Title` varchar(45) DEFAULT NULL,
  `Language` varchar(15) DEFAULT NULL,
  `Binding_id` int DEFAULT NULL,
  `No_Copies_Actual` int DEFAULT NULL,
  `No_Copies_Current` int DEFAULT NULL,
  `Category_id` int DEFAULT NULL,
  `Published_year` int DEFAULT NULL,
  PRIMARY KEY (`ISBN_Code`),
  KEY `Binding_id_FK` (`Binding_id`),
  CONSTRAINT `Binding_id_FK` FOREIGN KEY (`Binding_id`) REFERENCES `binding_details` (`Binding_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

##### BINDING TABLE #####
CREATE TABLE Binding_details(Binding_id int primary key, Binding_name varchar(40));

INSERT into Binding_details values('01', 'Toby Flenderson');
INSERT into Binding_details values('02', 'Jo Bennet');

ALTER TABLE book_details add CONSTRAINT Binding_id_FK FOREIGN KEY(Binding_id) references Binding_Details(Binding_id);

###### CATEGORY TABLE ####

create table Category_Details (
Catergory_id int primary key,
Category_name varchar(50)
);

insert into Category_Details values (1, 'Database');
insert into Category_Details values (2, 'Programming Language');


CREATE TABLE Borrower_details(
Borrower_id int PRIMARY KEY,
Book_id int,
Borrower_From Date,
Return_to Date,
Actual_Return_Date Date,
Issued_by int 
);

INSERT into Borrower_details values(
1, 004, '2020-08-01', '2020-08-20', '2020-08-20', 1
);
INSERT into Borrower_details values(
2, 005, '2020-08-02', '2020-08-22', NULL, 2
);  

CREATE TABLE Staff_details(
Staff_Id int primary key,
Staff_Name varchar(50),
Password varchar(35),
Is_Admin binary,
Designation varchar(20)
);

INSERT into Staff_Details values 
(
1, 'MICHAEL SCOTT', 'thatswhatshesaid@gmail.com', 0, 'HOD'
);
INSERT into Staff_Details values (
2, 'DWIGHT K. SCHRUTE', 'facts@gmail.com', 0, 'Lib_mgr'
);

Alter table borrower_details
Add Constraint Issued_by_fk foreign key(Issued_by) references Staff_Details(Staff_Id);

Create Table Student_Details (
Student_id varchar(20) primary key,
Student_name varchar(30),
Gender varchar(10),
DOB date,
Borrower_id int,
Department varchar(20),
contact_number varchar(11)
);

insert into Student_Details values (
'2019-1001', 'Jim Halpert', 'Male', '2000-10-05', 1, 'CSE', '0000000001'
);
insert into Student_Details values (
'2019-1002', 'Andy Bernad', 'Male', '2001-03-09', 2, 'CSE', '0000000002'
);
insert into Student_Details values (
'2019-1003', 'Pam Beesly', 'Female', '2000-04-10', 3, 'CSIT', '0000000004'
);
insert into Student_Details values (
'2019-1004', 'Kevin Malone', 'Male', '2000-05-11', 4, 'CSE', '0000000005'
);
insert into Student_Details values (
'2019-1005', 'Creed Bratton', 'Male', '1999-06-12', 4, 'CSE', '0000000006'
);
insert into Student_Details values (
'2019-1006', 'Stanley Hudson', 'Male', '2000-07-13', 4, 'CSE', '0000000007'
);
insert into Student_Details values (
'2019-1007', 'Gabe', 'Male', '2000-08-14', 4, 'CSE', '0000000008'
);
insert into Student_Details values (
'2019-1008', 'Angela Martin', 'Female', '2000-09-15', 4, 'CSE', '0000000009'
);
insert into Student_Details values (
'2019-1009', 'Holly Flax', 'Female', '2000-10-16', 4, 'CSE', '0000000010'
);
insert into Student_Details values (
'2019-1010', 'Phyllis vance', 'Female', '2000-11-17', 4, 'CSE', '0000000011'
);
alter table Student_Details add Constraint borrower_id_fk foreign key(Borrower_id) references borrower_details(Borrower_id);

CREATE TABLE Shelf_Details(
Shelf_id int primary key,
Shelf_No int,
Floor_No int
);

insert into Shelf_Details values (
1,1,1
);
insert into Shelf_Details values (
2,2,1
);
insert into Shelf_Details values (
3,1,2
);