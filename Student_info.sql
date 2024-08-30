/*Create Table Students_information
(
    Roll_no int primary key, 
	FirstName varchar(20),
	LastName Varchar(20),
	Father_name varchar (20),
	Mother_Name varchar(20),
	Student_email varchar(20),
	Student_MobileNo numeric,
	Student_DOB date,
	Student_Age int,
	Student_Gender varchar(15),
	Student_Department varchar(20),
	Student_Address varchar(50),
	Student_City varchar(20),
	Student_State varchar(20)
);*/
alter table Students_information add column Mentor_id int ;
--select*from Students_information;
--Alter table Students_Information drop column Student_Address;
insert into Students_information values

INSERT INTO students_information (Roll_no, FirstName, LastName, Father_name, Mother_Name, Student_email, Student_MobileNo, Student_DOB, Student_Age, Student_Gender, Student_Department, Student_City, Student_State, mentor_id)
VALUES
    (101, 'Rajesh', 'Sharma', 'Amit Sharma', 'Sunita Sharma', 'rajesh@example.com', 9876543210, '2003-01-15', 18, 'Male', 'CE', 'Delhi', 'Delhi', 201),
    (102, 'Neha', 'Verma', 'Anil Verma', 'Sarita Verma', 'neha@example.com', 8765432109, '2003-02-20', 18, 'Female', 'IT', 'Mumbai', 'Maharashtra', 202),
    (103, 'Amit', 'Singh', 'Rakesh Singh', 'Anita Singh', 'amit@example.com', 9876012345, '2002-12-10', 19, 'Male', 'CST', 'Bangalore', 'Karnataka', 203),
    (104, 'Sneha', 'Gupta', 'Vikram Gupta', 'Anjali Gupta', 'sneha@example.com', 8976543210, '2002-11-05', 19, 'Female', 'CEA', 'Chennai', 'Tamil Nadu', 204),
    (105, 'Rahul', 'Patel', 'Kiran Patel', 'Neeta Patel', 'rahul@example.com', 9876987654, '2003-05-25', 18, 'Male', 'AIML', 'Pune', 'Maharashtra', 205),
    (106, 'Priya', 'Kaur', 'Hardeep Kaur', 'Manpreet Kaur', 'priya@example.com', 8765432101, '2002-08-08', 19, 'Female', 'CE', 'Amritsar', 'Punjab', 201),
    (107, 'Ankur', 'Joshi', 'Vijay Joshi', 'Anita Joshi', 'ankur@example.com', 9876501234, '2003-06-30', 18, 'Male', 'IT', 'Indore', 'Madhya Pradesh', 202),
    (108, 'Pooja', 'Chopra', 'Rajesh Chopra', 'Seema Chopra', 'pooja@example.com', 8976543120, '2002-07-12', 19, 'Female', 'CST', 'Kolkata', 'West Bengal', 203),
    (109, 'Ravi', 'Verma', 'Vijay Verma', 'Sunita Verma', 'ravi@example.com', 9876543123, '2003-04-18', 18, 'Male', 'CEA', 'Jaipur', 'Rajasthan', 204),
    (110, 'Meera', 'Nair', 'Rajan Nair', 'Priya Nair', 'meera@example.com', 8765012345, '2002-03-22', 19, 'Female', 'AIML', 'Kochi', 'Kerala', 205),
    (111, 'Aakash', 'Rajput', 'Rajendra Rajput', 'Rina Rajput', 'aakash@example.com', 9876789012, '2003-07-08', 18, 'Male', 'CE', 'Lucknow', 'Uttar Pradesh', 201),
    (112, 'Ayesha', 'Khan', 'Salman Khan', 'Kareena Khan', 'ayesha@example.com', 8765432109, '2003-08-15', 18, 'Female', 'IT', 'Hyderabad', 'Telangana', 202),
    (113, 'Vikram', 'Rathore', 'Rajesh Rathore', 'Savita Rathore', 'vikram@example.com', 9876012345, '2002-12-01', 19, 'Male', 'CST', 'Ahmedabad', 'Gujarat', 203),
    (114, 'Jyoti', 'Sharma', 'Ramesh Sharma', 'Anita Sharma', 'jyoti@example.com', 8976543210, '2002-11-10', 19, 'Female', 'CEA', 'Bhopal', 'Madhya Pradesh', 204),
    (115, 'Aryan', 'Malhotra', 'Vivek Malhotra', 'Neha Malhotra', 'aryan@example.com', 9876987654, '2003-06-25', 18, 'Male', 'AIML', 'Noida', 'Uttar Pradesh', 205),
    (116, 'Aditi', 'Sinha', 'Rahul Sinha', 'Smita Sinha', 'aditi@example.com', 8765432101, '2002-08-18', 19, 'Female', 'CE', 'Ranchi', 'Jharkhand', 201),
    (117, 'Rohan', 'Mehta', 'Sanjay Mehta', 'Poonam Mehta', 'rohan@example.com', 9876501234, '2003-05-30', 18, 'Male', 'IT', 'Chandigarh', 'Punjab', 202),
    (118, 'Nisha', 'Sharma', 'Alok Sharma', 'Anjali Sharma', 'nisha@example.com', 8976543120, '2002-07-15', 19, 'Female', 'CST', 'Dehradun', 'Uttarakhand', 203),
    (119, 'Amit', 'Kumar', 'Rajesh Kumar', 'Meera Kumar', 'amit@example.com', 9876543123, '2003-04-22', 18, 'Male', 'CEA', 'Patna', 'Bihar', 204),
    (120, 'Shalini', 'Rai', 'Alok Rai', 'Poonam Rai', 'shalini@example.com', 8765012345, '2002-03-28', 19, 'Female', 'AIML', 'Mangalore', 'Karnataka', 205),
    (121, 'Raghav', 'Gupta', 'Vijay Gupta', 'Anita Gupta', 'raghav@example.com', 9876789012, '2003-07-12', 18, 'Male', 'CE', 'Bhubaneswar', 'Odisha', 201),
    (122, 'Swati', 'Jain', 'Alok Jain', 'Ritu Jain', 'swati@example.com', 8765432109, '2003-08-20', 18, 'Female', 'IT', 'Surat', 'Gujarat', 202),
    (123, 'Varun', 'Singh', 'Rakesh Singh', 'Anita Singh', 'varun@example.com', 9876012345, '2002-12-05', 19, 'Male', 'CST', 'Guwahati', 'Assam', 203),
    (124, 'Tanvi', 'Verma', 'Vikram Verma', 'Anjali Verma', 'tanvi@example.com', 8976543210, '2002-11-15', 19, 'Female', 'CEA', 'Coimbatore', 'Tamil Nadu', 204),
    (125, 'Rajat', 'Sharma', 'Amit Sharma', 'Sunita Sharma', 'rajat@example.com', 9876987654, '2003-06-28', 18, 'Male', 'AIML', 'Raipur', 'Chhattisgarh', 205),
    (126, 'Aditi', 'Chauhan', 'Vikram Chauhan', 'Savita Chauhan', 'aditi@example.com', 8765432101, '2002-08-30', 19, 'Female', 'CE', 'Jaipur', 'Rajasthan', 201),
    (127, 'Saurabh', 'Gupta', 'Alok Gupta', 'Neha Gupta', 'saurabh@example.com', 9876501234, '2003-05-10', 18, 'Male', 'IT', 'Kanpur', 'Uttar Pradesh', 202),
    (128, 'Kirti', 'Sharma', 'Rajesh Sharma', 'Anita Sharma', 'kirti@example.com', 8976543120, '2002-07-18', 19, 'Female', 'CST', 'Agra', 'Uttar Pradesh', 203),
    (129, 'Vikas', 'Kumar', 'Rakesh Kumar', 'Meena Kumar', 'vikas@example.com', 9876543123, '2003-04-25', 18, 'Male', 'CEA', 'Nagpur', 'Maharashtra', 204),
    (130, 'Anjali', 'Rajput', 'Rajendra Rajput', 'Rina Rajput', 'anjali@example.com', 8765012345, '2002-03-31', 19, 'Female', 'AIML', 'Ahmedabad', 'Gujarat', 205);
	
	INSERT INTO students_information (Roll_no, FirstName, LastName, Father_name, Mother_Name, Student_email, Student_MobileNo, Student_DOB, Student_Age, Student_Gender, Student_Department, Student_City, Student_State, mentor_id)
VALUES
    (131, 'Vivek', 'Sharma', 'Rajesh Sharma', 'Suman Sharma', 'vivek@example.com', 9876543128, '2002-06-15', 19, 'Male', 'CE', 'Chandigarh', 'Punjab', 201),
    (132, 'Nisha', 'Gupta', 'Alok Gupta', 'Anjali Gupta', 'nisha@example.com', 8976543124, '2003-05-20', 18, 'Female', 'IT', 'Indore', 'Madhya Pradesh', 202),
    (133, 'Rahul', 'Verma', 'Vijay Verma', 'Sunita Verma', 'rahul@example.com', 9876501238, '2002-04-25', 19, 'Male', 'CST', 'Bangalore', 'Karnataka', 203),
    (134, 'Sneha', 'Kumar', 'Vikram Kumar', 'Anjali Kumar', 'sneha@example.com', 8765432106, '2002-07-20', 19, 'Female', 'CEA', 'Chennai', 'Tamil Nadu', 204),
    (135, 'Rajesh', 'Shah', 'Amit Shah', 'Sunita Shah', 'rajesh@example.com', 9876543129, '2003-02-15', 18, 'Male', 'AIML', 'Pune', 'Maharashtra', 205),
    (136, 'Meera', 'Verma', 'Hardeep Verma', 'Manpreet Verma', 'meera@example.com', 8765432107, '2002-08-05', 19, 'Female', 'CE', 'Amritsar', 'Punjab', 201),
    (137, 'Akash', 'Jain', 'Vijay Jain', 'Anita Jain', 'akash@example.com', 9876501239, '2003-07-30', 18, 'Male', 'IT', 'Indore', 'Madhya Pradesh', 202),
    (138, 'Pooja', 'Chopra', 'Rajesh Chopra', 'Seema Chopra', 'pooja@example.com', 8976543125, '2002-06-12', 19, 'Female', 'CST', 'Kolkata', 'West Bengal', 203),
    (139, 'Ravi', 'Verma', 'Vijay Verma', 'Sunita Verma', 'ravi@example.com', 9876543130, '2003-04-18', 18, 'Male', 'CEA', 'Jaipur', 'Rajasthan', 204),
    (140, 'Priya', 'Nair', 'Rajan Nair', 'Priya Nair', 'priya@example.com', 8765012350, '2002-03-22', 19, 'Female', 'AIML', 'Kochi', 'Kerala', 205),
    (141, 'Aakash', 'Rajput', 'Rajendra Rajput', 'Rina Rajput', 'aakash@example.com', 9876789017, '2003-09-08', 18, 'Male', 'CE', 'Lucknow', 'Uttar Pradesh', 201),
    (142, 'Ayesha', 'Khan', 'Salman Khan', 'Kareena Khan', 'ayesha@example.com', 8765432108, '2003-08-15', 18, 'Female', 'IT', 'Hyderabad', 'Telangana', 202),
    (143, 'Vikram', 'Rathore', 'Rajesh Rathore', 'Savita Rathore', 'vikram@example.com', 9876012351, '2002-12-01', 19, 'Male', 'CST', 'Ahmedabad', 'Gujarat', 203),
    (144, 'Jyoti', 'Sharma', 'Ramesh Sharma', 'Anita Sharma', 'jyoti@example.com', 8976543126, '2002-11-10', 19, 'Female', 'CEA', 'Bhopal', 'Madhya Pradesh', 204),
    (145, 'Aryan', 'Malhotra', 'Vivek Malhotra', 'Neha Malhotra', 'aryan@example.com', 9876987655, '2003-06-25', 18, 'Male', 'AIML', 'Noida', 'Uttar Pradesh', 205),
    (146, 'Aditi', 'Sinha', 'Rahul Sinha', 'Smita Sinha', 'aditi@example.com', 8765432109, '2002-08-18', 19, 'Female', 'CE', 'Ranchi', 'Jharkhand', 201),
    (147, 'Rohan', 'Mehta', 'Sanjay Mehta', 'Poonam Mehta', 'rohan@example.com', 9876501240, '2003-05-30', 18, 'Male', 'IT', 'Chandigarh', 'Punjab', 202),
    (148, 'Nisha', 'Sharma', 'Alok Sharma', 'Anjali Sharma', 'nisha@example.com', 8976543127, '2002-07-15', 19, 'Female', 'CST', 'Dehradun', 'Uttarakhand', 203),
    (149, 'Amit', 'Kumar', 'Rajesh Kumar', 'Meera Kumar', 'amit@example.com', 9876543132, '2003-04-22', 18, 'Male', 'CEA', 'Patna', 'Bihar', 204),
    (150, 'Divya', 'Raj', 'Sunil Raj', 'Neena Raj', 'divya@example.com', 8765012351, '2002-03-10', 19, 'Female', 'AIML', 'Coimbatore', 'Tamil Nadu', 205),
    (151, 'Kunal', 'Goyal', 'Anil Goyal', 'Pooja Goyal', 'kunal@example.com', 9876789018, '2003-07-20', 18, 'Male', 'CE', 'Kanpur', 'Uttar Pradesh', 201);
	
--alter table students_information add enrollment_no numeric;
--select * from Students_information;
do $$
declare 
n int;
x int:=101;
enroll numeric:=2200217010012;
begin
for n in 101..151 loop
UPDATE students_information
SET enrollment_no = enroll
WHERE roll_no =x;
x=x+1;
enroll=enroll+7;
end loop;
end;
$$

create table Departments
(Department_id INT,
 Department_name varchar(10) primary key,
 Department_CODE varchar(20)
 
);
ALTER table students_information
RENAME COLUMN  student_department TO department_name;
select* from students_information ;
select* from DEPARTMENTS;


	
--select* from students_information ;
INSERT INTO students_information (Roll_no, FirstName, LastName, Father_name, Mother_Name, Student_email, Student_MobileNo, Student_DOB, Student_Age, Student_Gender, Department_name, Student_City, Student_State, mentor_id)
VALUES
    (152, 'Gaurav', 'Choudhary', 'Rajesh Choudhary', 'Suman Choudhary', 'gaurav@example.com', 9876543135, '2002-08-10', 19, 'Male', 'CE', 'Jaipur', 'Rajasthan', 201),
    (153, 'Shreya', 'Gupta', 'Alok Gupta', 'Anjali Gupta', 'shreya@example.com', 8976543127, '2003-07-18', 18, 'Female', 'IT', 'Delhi', 'Delhi', 202),
    (154, 'Amit', 'Kumar', 'Vijay Kumar', 'Sunita Kumar', 'amit@example.com', 9876501236, '2002-06-25', 19, 'Male', 'CST', 'Mumbai', 'Maharashtra', 203),
    (155, 'Ananya', 'Sharma', 'Vikram Sharma', 'Anjali Sharma', 'ananya@example.com', 8765432106, '2002-07-20', 19, 'Female', 'CEA', 'Chennai', 'Tamil Nadu', 204),
    (156, 'Prateek', 'Verma', 'Amit Verma', 'Sunita Verma', 'prateek@example.com', 9876543139, '2003-03-15', 18, 'Male', 'AIML', 'Pune', 'Maharashtra', 205),
    (157, 'Sakshi', 'Reddy', 'Harish Reddy', 'Savita Reddy', 'sakshi@example.com', 8765432107, '2002-08-05', 19, 'Female', 'CE', 'Hyderabad', 'Telangana', 201),
    (158, 'Rohan', 'Jain', 'Vijay Jain', 'Anita Jain', 'rohan@example.com', 9876501242, '2003-07-30', 18, 'Male', 'IT', 'Indore', 'Madhya Pradesh', 202),
    (159, 'Neha', 'Chopra', 'Rajesh Chopra', 'Seema Chopra', 'neha@example.com', 8976543128, '2002-06-12', 19, 'Female', 'CST', 'Kolkata', 'West Bengal', 203),
    (160, 'Rajat', 'Verma', 'Vijay Verma', 'Sunita Verma', 'rajat@example.com', 9876543140, '2003-04-18', 18, 'Male', 'CEA', 'Jaipur', 'Rajasthan', 204),
    (161, 'Kavita', 'Nair', 'Rajan Nair', 'Priya Nair', 'kavita@example.com', 8765012355, '2002-03-22', 19, 'Female', 'AIML', 'Kochi', 'Kerala', 205),
    (162, 'Vikram', 'Rajput', 'Rajendra Rajput', 'Rina Rajput', 'vikram@example.com', 9876789019, '2003-09-08', 18, 'Male', 'CE', 'Lucknow', 'Uttar Pradesh', 201),
    (163, 'Priya', 'Gupta', 'Salman Gupta', 'Kareena Gupta', 'priya@example.com', 8765432108, '2003-08-15', 18, 'Female', 'IT', 'Mumbai', 'Maharashtra', 202),
    (164, 'Rahul', 'Rathore', 'Rajesh Rathore', 'Savita Rathore', 'rahul@example.com', 9876012356, '2002-12-01', 19, 'Male', 'CST', 'Ahmedabad', 'Gujarat', 203),
    (165, 'Swati', 'Sharma', 'Ramesh Sharma', 'Anita Sharma', 'swati@example.com', 8976543129, '2002-11-10', 19, 'Female', 'CEA', 'Bhopal', 'Madhya Pradesh', 204),
    (166, 'Alok', 'Malhotra', 'Vivek Malhotra', 'Neha Malhotra', 'alok@example.com', 9876987657, '2003-06-25', 18, 'Male', 'AIML', 'Noida', 'Uttar Pradesh', 205),
    (167, 'Aditi', 'Saxena', 'Rahul Saxena', 'Smita Saxena', 'aditi@example.com', 8765432109, '2002-08-18', 19, 'Female', 'CE', 'Ranchi', 'Jharkhand', 201),
    (168, 'Rohit', 'Mehta', 'Sanjay Mehta', 'Poonam Mehta', 'rohit@example.com', 9876501244, '2003-05-30', 18, 'Male', 'IT', 'Chandigarh', 'Punjab', 202),
    (169, 'Neha', 'Sharma', 'Alok Sharma', 'Anjali Sharma', 'neha@example.com', 8976543130, '2002-07-15', 19, 'Female', 'CST', 'Dehradun', 'Uttarakhand', 203),
    (170, 'Amit', 'Verma', 'Rajesh Verma', 'Meera Verma', 'amit@example.com', 9876543145, '2003-04-22', 18, 'Male', 'CEA', 'Patna', 'Bihar', 204),
    (171, 'Tanvi', 'Rajput', 'Sunil Rajput', 'Neena Rajput', 'tanvi@example.com', 8765012352, '2002-03-10', 19, 'Female', 'AIML', 'Coimbatore', 'Tamil Nadu', 205),
    (172, 'Kunal', 'Goyal', 'Anil Goyal', 'Pooja Goyal', 'kunal@example.com', 9876789020, '2003-07-20', 18, 'Male', 'CE', 'Kanpur', 'Uttar Pradesh', 201),
    (173, 'Isha', 'Choudhary', 'Rajesh Choudhary', 'Suman Choudhary', 'isha@example.com', 8976543131, '2002-08-10', 19, 'Female', 'IT', 'Delhi', 'Delhi', 202),
    (174, 'Rahul', 'Kumar', 'Vijay Kumar', 'Sunita Kumar', 'rahul@example.com', 9876501245, '2002-06-25', 19, 'Male', 'CST', 'Mumbai', 'Maharashtra', 203),
    (175, 'Ankita', 'Sharma', 'Vikram Sharma', 'Anjali Sharma', 'ankita@example.com', 8765432109, '2002-07-20', 19, 'Female', 'CEA', 'Chennai', 'Tamil Nadu', 204),
    (176, 'Ravi', 'Gupta', 'Amit Gupta', 'Sunita Gupta', 'ravi@example.com', 9876543148, '2003-03-15', 18, 'Male', 'AIML', 'Pune', 'Maharashtra', 205),
    (177, 'Sakshi', 'Kapoor', 'Harish Kapoor', 'Savita Kapoor', 'sakshi@example.com', 8765432107, '2002-08-05', 19, 'Female', 'CE', 'Hyderabad', 'Telangana', 201),
    (178, 'Alok', 'Jain', 'Vijay Jain', 'Anita Jain', 'alok@example.com', 9876501249, '2003-07-30', 18, 'Male', 'IT', 'Indore', 'Madhya Pradesh', 202),
    (179, 'Nisha', 'Verma', 'Rajesh Verma', 'Seema Verma', 'nisha@example.com', 8976543132, '2002-06-12', 19, 'Female', 'CST', 'Kolkata', 'West Bengal', 203),
    (180, 'Rahul', 'Yadav', 'Vijay Yadav', 'Sunita Yadav', 'rahul@example.com', 9876543140, '2003-04-18', 18, 'Male', 'CEA', 'Jaipur', 'Rajasthan', 204),
    (181, 'Kavita', 'Sinha', 'Rajesh Sinha', 'Priya Sinha', 'kavita@example.com', 8765012355, '2002-03-22', 19, 'Female', 'AIML', 'Kochi', 'Kerala', 205),
    (182, 'Alok', 'Sharma', 'Ramesh Sharma', 'Anita Sharma', 'alok@example.com', 9876789021, '2003-09-08', 18, 'Male', 'CE', 'Lucknow', 'Uttar Pradesh', 201),
    (183, 'Anjali', 'Gupta', 'Salman Gupta', 'Kareena Gupta', 'anjali@example.com', 8765432110, '2003-08-15', 18, 'Female', 'IT', 'Mumbai', 'Maharashtra', 202),
    (184, 'Rajesh', 'Rathore', 'Rajesh Rathore', 'Savita Rathore', 'rajesh@example.com', 9876012357, '2002-12-01', 19, 'Male', 'CST', 'Ahmedabad', 'Gujarat', 203),
    (185, 'Swati', 'Mehta', 'Sanjay Mehta', 'Poonam Mehta', 'swati@example.com', 8976543133, '2002-11-10', 19, 'Female', 'CEA', 'Bhopal', 'Madhya Pradesh', 204),
    (186, 'Alok', 'Chauhan', 'Vivek Chauhan', 'Savita Chauhan', 'alok@example.com', 9876987658, '2003-06-25', 18, 'Male', 'AIML', 'Noida', 'Uttar Pradesh', 205),
    (187, 'Aditi', 'Kumar', 'Rahul Kumar', 'Smita Kumar', 'aditi@example.com', 8765432111, '2002-08-18', 19, 'Female', 'CE', 'Ranchi', 'Jharkhand', 201),
    (188, 'Rohit', 'Verma', 'Sanjay Verma', 'Poonam Verma', 'rohit@example.com', 9876501250, '2003-05-30', 18, 'Male', 'IT', 'Chandigarh', 'Punjab', 202),
    (189, 'Neha', 'Kapoor', 'Alok Kapoor', 'Anjali Kapoor', 'neha@example.com', 8976543134, '2002-07-15', 19, 'Female', 'CST', 'Dehradun', 'Uttarakhand', 203),
    (190, 'Amit', 'Verma', 'Rajesh Verma', 'Meera Verma', 'amit@example.com', 9876543146, '2003-04-22', 18, 'Male', 'CEA', 'Patna', 'Bihar', 204),
    (191, 'Tanvi', 'Rajput', 'Sunil Rajput', 'Neena Rajput', 'tanvi@example.com', 8765012356, '2002-03-10', 19, 'Female', 'AIML', 'Coimbatore', 'Tamil Nadu', 205),
    (192, 'Kunal', 'Goyal', 'Anil Goyal', 'Pooja Goyal', 'kunal@example.com', 9876789022, '2003-07-20', 18, 'Male', 'CE', 'Kanpur', 'Uttar Pradesh', 201);
	
	
	
	
	INSERT INTO students_information (Roll_no, FirstName, LastName, Father_name, Mother_Name, Student_email, Student_MobileNo, Student_DOB, Student_Age, Student_Gender, Department_name, Student_City, Student_State, mentor_id)
VALUES
    (193, 'Divya', 'Sharma', 'Alok Sharma', 'Seema Sharma', 'divya@example.com', 9876543150, '2002-08-10', 19, 'Female', 'CE', 'Delhi', 'Delhi', 202),
    (194, 'Vikas', 'Singh', 'Rajesh Singh', 'Sunita Singh', 'vikas@example.com', 8976543135, '2003-06-25', 18, 'Male', 'CST', 'Mumbai', 'Maharashtra', 203),
    (195, 'Anjali', 'Yadav', 'Vijay Yadav', 'Sunita Yadav', 'anjali@example.com', 8765432115, '2002-07-20', 19, 'Female', 'CEA', 'Chennai', 'Tamil Nadu', 204),
    (196, 'Amit', 'Shah', 'Amit Shah', 'Sunita Shah', 'amit@example.com', 9876543158, '2003-03-15', 18, 'Male', 'AIML', 'Pune', 'Maharashtra', 205),
    (197, 'Sneha', 'Jain', 'Vijay Jain', 'Anita Jain', 'sneha@example.com', 8765432107, '2002-08-05', 19, 'Female', 'CE', 'Hyderabad', 'Telangana', 201),
    (198, 'Rahul', 'Choudhary', 'Rajesh Choudhary', 'Suman Choudhary', 'rahul@example.com', 9876501260, '2003-07-30', 18, 'Male', 'IT', 'Indore', 'Madhya Pradesh', 202),
    (199, 'Neha', 'Gupta', 'Alok Gupta', 'Anjali Gupta', 'neha@example.com', 8976543136, '2002-06-12', 19, 'Female', 'CST', 'Kolkata', 'West Bengal', 203),
    (200, 'Ravi', 'Verma', 'Vijay Verma', 'Sunita Verma', 'ravi@example.com', 9876543160, '2003-04-18', 18, 'Male', 'CEA', 'Jaipur', 'Rajasthan', 204);
	
	
do $$
declare 
n int;
x int:=152;
enroll numeric:=2200217010369;
begin
for n in 152..200 loop
UPDATE students_information
SET enrollment_no = enroll
WHERE roll_no =x;
x=x+1;
enroll=enroll+7;
end loop;
end;
$$


Alter table students_information
add constraint fk_dept
foreign key (department_name) references departments (department_name);
select * from departments;
select * from students_information;
insert into departments values
(1,'CE',0170239),
(2,'CEA',0170347),
(3,'IT',0170018),
(4,'CST',0170122),
(5,'AIML',0170452);


Alter table students_information
add constraint fk_dept
foreign key (department_name) references departments (department_name);
select * from departments;
select * from students_information;
insert into departments values
(1,'CE',0170239),
(2,'CEA',0170347),
(3,'IT',0170018),
(4,'CST',0170122),
(5,'AIML',0170452);


create table courses (Course_Id int,Course_Name varchar(40),Course_Code varchar(20),Department_name varchar(10),Foreign key (Department_name)References departments(department_name) );

select*from  courses ;

alter table  courses Add Primary key(Course_Id);

insert into  courses values(1,'DS',00123,'CEA');
insert into courses values(2,'DBMS',456,'CEA'),(3,'JAVA',789,'CEA'),(4,'FEE',901,'CEA'),(5,'MATHS',116,'CEA');


insert into  courses values(7,'DBMS',256,'CE');

drop table courses; 


create table courses (Course_Id int,Course_Name varchar(40),Course_Code varchar(20),Department_name varchar(10),Foreign key (Department_name)References departments(department_name) );

select*from  courses ;

alter table  courses Add Primary key(Course_Id);
INSERT INTO Courses (Course_ID, Course_Name, Course_Code, Department_Name)
VALUES
    (1, 'FEE', '101', 'CE'),
    (2, 'DS', '202', 'CE'),
    (3, 'DBMS', '303', 'CE'),
    (4, 'MATHS', '404', 'CE'),
    (5, 'JAVA', '505', 'CE'),
    (6, 'FEE', '606', 'CEA'),
    (7, 'DS', '707', 'CEA'),
    (8, 'DBMS', '808', 'CEA'),
    (9, 'MATHS', '909', 'CEA'),
    (10, 'JAVA', '1010', 'CEA'),
    (11, 'FEE', '1111', 'IT'),
    (12, 'DS', '1212', 'IT'),
    (13, 'DBMS', '1313', 'IT'),
    (14, 'MATHS', '1414', 'IT'),
    (15, 'JAVA', '1515', 'IT'),
    (16, 'FEE', '1616', 'AIML'),
    (17, 'DS', '1717', 'AIML'),
    (18, 'DBMS', '1818', 'AIML'),
    (19, 'MATHS', '1919', 'AIML'),
    (20, 'JAVA', '2020', 'AIML'),
    (21, 'FEE', '2121', 'CST'),
    (22, 'DS', '2222', 'CST'),
    (23, 'DBMS', '2323', 'CST'),
    (24, 'MATHS', '2424', 'CST'),
    (25, 'JAVA', '2525', 'CST');



alter table courses
rename course_shortform to course_shortname;
select* from courses;
alter table courses add column course_name varchar(40);
insert into courses

UPDATE courses
SET course_name ='Computer Programming using JAVA'
WHERE course_shortname='JAVA';


UPDATE courses
SET course_name = varchar(70)
WHERE course_shortname='FEE';

create table Faculty (Faculty_id int Primary key,Faculty_name varchar(40),Faculty_ShortName varchar(10),Faculty_PhoneNo Numeric,Faculty_EmailId varchar(30),Course_FullName varchar(50),Course_ShortName varchar (20),Course_Credit int );
ALTER TABLE Faculty
ADD department_Name varchar(40),
ADD CONSTRAINT fac_dept
FOREIGN KEY (Department_Name) REFERENCES departments(Department_name);

select *from faculty;
select *from courses;

insert into Faculty values
(201,'Ms.Zalak Bhavsar','ZAB',72227979989,'zalak.bhavsar@ljinsititues.edu.in','Database Management System','DBMS',6,'CE'),
(202,'Mr.Anuj  Bhatt  ','ADB',9712769945,'anujbhatt_ljiet@ljinsititues.edu.in','Data Structure','DS',6,'CEA'),
(203,'Dr.Diptesh Patel','PDR',9408741450,'dr.dipteshpatel_ljiet@ljinsititues.edu.in','Database Management System','DBMS',6,'CE'),
(204,'Mr.Milan D. Trivedi','MDT',8511112792,'milan.trivedi_ljiet@ljinsititues.edu.in','Computer Programming Using Java-II','JAVA-II',6,'IT'),
(205,'Mr.Divyang Patel','PDB',7567779133,'divyng.patel@ljinsititues.edu.in','Data Structure','DS',6,'CEA'),
(206,'MR.Dhruv Parmar','PDH',97144411185,'dhruv.parmar_ljiet@ljinsititues.edu.in','Computer Programming Using Java-II','JAVA-II',6,'IT');

insert into faculty values
(207, 'Mr.Akhilesh Yadav','ARY',9016847780,'akhilesh.yadav@ljku.eu.in','Fundamental of Electrical Engineering','FEE',04,'CST'),
(208, 'Mr.Yogesh Panchal','YRP',9924015439,'yogesh.panchal@ljku.eu.in','Fundamental of Electrical Engineering','FEE',04,'CST'),
(209, 'Mr.Hiren Makwana','HNM',9897934523,'hiren.makwana@ljku.eu.in','Mathematics','Maths',05,'AIML'),
(210, 'Mr.Prayag Patel','PKP',9347890992,'prayag.patel@ljku.eu.in','Mathematics','Maths',05,'AIML');

alter table faculty 
alter column faculty_emailid set data type varchar(70);

select * from faculty
select * from students_information 
alter table faculty add constraint unique_shortname unique(faculty_shortname);
alter table faculty add constraint unique_name unique(faculty_name);
alter table students_information add constraint unique_enrollmentno unique(enrollment_no);

create table Mentor
(
 department_name varchar(20),
 roll_no int ,enrollment_no numeric,
 student_firstname varchar(20),
 student_middlename varchar(20),
 student_lastname varchar(20),
 mentor_id int,
Foreign key (roll_no) references Students_information(roll_no), 
Foreign key (enrollment_no) references Students_information(enrollment_no) 
);
select*from mentor

insert into mentor(roll_no,enrollment_no,department_name,student_firstname,student_middlename,student_lastname,mentor_id) 
select roll_no,enrollment_no,department_name,firstname,father_name,lastname,mentor_id from students_information;

select*from mentor;
select*from faculty ;

alter table mentor add column mentor_name varchar(40);
update mentor set mentor_name='Mr. Milan Trivefdi' where mentor_id=205;

alter table mentor add column mentor_shortname varchar(20);
update mentor set mentor_shortname='PDB' where mentor_id=205;

select * from mentor order by roll_no;
alter table mentor drop column student_middlename ;

update mentor set mentor_name='Mr Divyang Patel' where mentor_id=205;
alter table mentor add column mentor_phoneno numeric;
update mentor set mentor_phoneno=9712769945 where mentor_id=202;
update mentor set mentor_phoneno=9408741450 where mentor_id=203;
update mentor set mentor_phoneno=8511112792 where mentor_id=204;
update mentor set mentor_phoneno=7567779133 where mentor_id=205;
select* from faculty
alter table mentor add constraint unique_roll_no unique(roll_no);
alter table mentor add foreign key(mentor_shortname) references faculty(faculty_shortname);
alter table mentor add foreign key(mentor_name) references faculty(faculty_name);

select*from students_information;
select*from mentor

			
select*from marksheet

alter table marksheet add column TOTAL_MARKS int;

alter table marksheet add column FEE_marks int, add column DS_marks int, add column DBMS_marks int , add column MATHS_marks int, add column JAVA_marks int;

alter table marksheet add column FEE_marks int,DS_marks int,DBMS_marks int , MATHS_marks int, JAVA_marks int;

alter table marksheet add column(FEE_marks int,DS_marks int,DBMS_marks int , MATHS_marks int, JAVA_marks int);
01:57:08
select*from marksheet
01:54:56
insert into marksheet(roll_no,enrollment_no,department_name,first_name,last_name) select roll_no,enrollment_no,department_name,firstname,lastname from students_information;
01:54:51
insert into marksheet(roll_no,enrollment_no,department_name,firstname,lastname) select roll_no,enrollment_no,department_name,firstname,lastname from students_information;
01:54:34
insert into marksheet(roll_no,enrollment_no,department_name,student_firstname,student_lastname) select roll_no,enrollment_no,department_name,firstname,lastname from students_information;
01:53:49
select * from mentor
01:53:24
select*from marksheet
01:53:02
insert into mentor(roll_no,enrollment_no,department_name,student_firstname,student_lastname) select roll_no,enrollment_no,department_name,firstname,lastname from students_information;
01:52:31
insert into mentor(roll_no,enrollment_no,department_name,student_firstname,student_lastname) select roll_no,enrollment_no,department_name,firstname,lastnamefrom students_information;
01:52:00
insert into mentor(roll_no,enrollment_no,department_name,student_firstname,student_lastname) select roll_no,enrollment_no,department_name,firstname,lastname,from students_information;
01:51:48
alter table marksheet add CONStRAINT marks_firstname foreign key (firs_tname) REFERENCES students_information(lastname);
01:49:56
alter table marksheet add CONStRAINT marks_firstname foreign key (firstname) REFERENCES students_information(lastname);
01:49:39
alter table marksheet add CONStRAINT marks_enrollmentno foreign key (enrollment_no) REFERENCES students_information(enrollment_no);
01:48:31
alter table marksheet add CONStRAINT marks_roll foreign key (roll_no) REFERENCES students_information(roll_no);
01:47:14
alter table marksheet add CONStRAINT marks_roll foreign key (roll_no) REFERENCES students_infor
01:46:30
alter table marksheet CONStRAINT marks_roll foreign key (roll_no) REFERENCES students_information(roll_no);
01:45:44
Query returned successfully in 84 msec.
Total rows: 0 of 0
Ln 1, Col 1

select * from marksheet
delete from marksheet where first_name is null;
/*
do $$
declare 
x int;
roll_no int;
begin
for x in 102..127 loop
INSERT INTO marksheet (fee_marks, ds_marks, dbms_marks, maths_marks, java_marks)
select
    floor(random() * 10) + 90;
    floor(random() * 6) + 20,
    floor(random() * 6) + 20,
    floor(random() * 6) + 20,
    floor(random() * 6) + 20 
WHERE roll_no = x;
end loop;
end;
$$

do $$
declare 
x int;
--roll_no int;
begin
for x in 102..127 loop
INSERT INTO marksheet (fee_marks, ds_marks, dbms_marks, maths_marks, java_marks)
SELECT 
    (floor(random() * 10) + 89)::integer,
    (floor(random() * 10) + 89)::integer,
    (floor(random() * 10) + 89)::integer,
    (floor(random() * 10) + 89)::integer,
    (floor(random() * 10) + 89)::integer
FROM marksheet
WHERE roll_no=x;
end loop;
end;u
$$
select* from marksheet
delete from marksheet where roll_no is null
*/
DO $$
DECLARE
    x int;
BEGIN
    FOR x IN 128..161 LOOP
        UPDATE marksheet
        SET
            fee_marks = (floor(random() * 25) + 65)::integer,
            ds_marks = (floor(random() * 25) + 65)::integer,
            dbms_marks = (floor(random() * 25) + 65)::integer,
            maths_marks = (floor(random() * 25) + 65)::integer,
            java_marks = (floor(random() * 25) + 65)::integer
        WHERE roll_no = x;
    END LOOP;
END;
$$;
select* from marksheet order by total_marks;
DO $$
DECLARE
    x int;
BEGIN
    FOR x IN 181..200 LOOP
        UPDATE marksheet
        SET
            fee_marks = floor(random() * 35)::integer,
            ds_marks = floor(random() * 35) ::integer,
            dbms_marks = floor(random() * 35) ::integer,
            maths_marks = floor(random() * 35) ::integer,
            java_marks = floor(random() * 35) ::integer
        WHERE roll_no = x;
    END LOOP;
END;
$$;

DO $$
DECLARE
    x int;
BEGIN
    FOR x IN 101..200 LOOP
        UPDATE marksheet
        SET
            total_marks=fee_marks+ds_marks+dbms_marks+maths_marks+java_marks
        WHERE roll_no = x;
    END LOOP;
END;
$$;

--select* from marksheet order by total_marks desc
create view failed_students as select
roll_no,
first_name,
last_name,
total_marks	
from marksheet
where fee_marks between 0 and 34
or ds_marks between 0 and 34
or dbms_marks between 0 and 34
or maths_marks between 0 and 34
or java_marks between 0 and 34




select * from failed_students


SELECT firstname,lastname ,COUNT(*) AS count
FROM students_information
GROUP BY firstname,lastname
HAVING COUNT(*) > 1;

SELECT *
FROM students_information
WHERE firstname = 'Ravi'

SELECT student_email ,COUNT(*) AS count
FROM students_information
GROUP BY student_email
HAVING COUNT(*) > 1;




select * from students_information 

select firstname,lastname ,COUNT(*) AS count
FROM students_information
GROUP BY firstname,lastname
HAVING COUNT(*) > 1;

SELECT student_email ,COUNT(*) AS count
FROM students_information
GROUP BY student_email
HAVING COUNT(*) > 1;

select * from students_information where roll_no=170
select * from students_information where firstname ='Amit'
select* from mentor where student_firstname= 'Amit'
select* from marksheet where first_name= 'Amit'

UPDATE students_information
    SET
      lastname = 'Sharma', father_name ='Samay Sharma' ,mother_name='Disha Sharma',student_email='Amit13@example.com'
    WHERE roll_no = 154;

update students_information
set student_email='amit190@example.com' where roll_no=190


UPDATE  mentor
SET student_lastname = 'Sharma'
WHERE roll_no= 154;

UPDATE  marksheet
SET last_name = 'Sharma'
WHERE roll_no= 154;



SELECT student_mobileno ,COUNT(*) AS count
FROM students_information
GROUP BY student_mobileno
HAVING COUNT(*) > 1;

select* from students_information where student_mobileno= 8765012355
update students_information set student_mobileno=  8765033455 where roll_no=181

create table clubs_organization
(
	club_id int primary key,
	club_name varchar(100),
	description text
)d
--PLSQL Procedure
create or replace procedure insert_club(
    p_club_id INT,
    p_club_name VARCHAR(100),
    p_description TEXT
) as $$

BEGIN
    INSERT INTO clubs_organization (club_id, club_name, description)
    VALUES (p_club_id, p_club_name, p_description);

    COMMIT; 
END;
$$
LANGUAGE plpgsql;

call insert_club(1,'Theatre','A Club for drama enthusiast those who have their passion in acting and related category.University has many different things to serve rather than only studies');
call insert_club(2,'Music','A Club for someone who see future in playing guitar,drums,piano and much more. University has many different things to serve rather than only studies');
call insert_club(3,'Debate','A Club for Students interested in debating.University has many different things to serve rather than only studies');
call insert_club(4,'Nritya','Folk Dance, Garba, Classical,Hip-hop and much more for those who love dancing. University has many different things to serve rather than only studies');
call insert_club(5,'Sports','A Club for the future Jordan and Ronaldo. It includes Football,Basketball,Volleyball,Badminton and Kabaddi. University has many different things to serve rather than only studies');
call insert_club(6,'Cricket','A Club for one of our most favourite sports . University has many different things to serve rather than only studies');
call insert_club(7,'Indoor games','A Club for Chess, Table Tennis and many other indoor games.University has many different things to serve rather than only studies');
select * from clubs_organization
 update clubs_organization set description='A Club for drama enthusiast those who have their passion in acting and related category. University has many different things to serve rather than only studies' where club_id=1

select * from students_information
select * from faculty
select * from courses
select * from faculty
select * from departments
select * from mentor
select * from marksheet

create Table club_membership(
membership_id int primary key,
club_id int,
roll_no int, 
join_date date,
foreign key (club_id) references clubs_organization,
foreign key (roll_no) references students_information
);


INSERT INTO club_membership (membership_id, club_id, roll_no, join_date)
VALUES
    (1, 1, 102, '2023-01-01'),
    (2, 2, 108, '2023-02-15'),
    (3, 3, 110, '2023-03-10'),
    (4, 4, 114, '2023-04-20'),
    (5, 5, 115, '2023-05-05'),
    (6, 6, 119, '2023-06-30'),
    (7, 7, 122, '2023-07-01'),
    (8, 1, 126, '2023-01-10'),
    (9, 2, 128, '2023-02-20'),
    (10, 3, 131, '2023-03-25'),
    (11, 4, 135, '2023-04-05'),
    (12, 5, 136, '2023-05-15'),
    (13, 6, 137, '2023-06-01'),
    (14, 7, 166, '2023-07-10'),
    (15, 1, 167, '2023-01-20'),
    (16, 2, 169, '2023-02-05'),
    (17, 3, 172, '2023-03-30'),
    (18, 4, 174, '2023-04-15'),
    (19, 5, 188, '2023-05-01'),
    (20, 6, 199, '2023-06-10');
    INSERT INTO club_membership (membership_id, club_id, roll_no, join_date)
VALUES
    (21, 1, 103, '2023-01-02'),
    (22, 2, 109, '2023-02-16'),
    (23, 3, 112, '2023-03-11'),
    (24, 4, 117, '2023-04-21'),
    (25, 5, 118, '2023-05-06'),
    (26, 6, 120, '2023-07-01'),
    (27, 7, 125, '2023-07-02'),
    (28, 1, 129, '2023-01-11'),
    (29, 2, 132, '2023-02-21'),
    (30, 3, 133, '2023-03-26'),
    (31, 4, 138, '2023-04-06'),
    (32, 5, 140, '2023-05-16'),
    (33, 6, 141, '2023-06-02'),
    (34, 7, 167, '2023-07-11'),
    (35, 1, 170, '2023-01-21'),
    (36, 2, 175, '2023-02-06'),
    (37, 3, 176, '2023-03-31'),
    (38, 4, 178, '2023-04-16'),
    (39, 5, 189, '2023-05-02'),
    (40, 6, 200, '2023-06-11');
    

CREATE OR REPLACE FUNCTION change_club_id(
    p_roll_no INT,
    p_old_club_id INT,
    p_new_club_id INT
) RETURNS BOOLEAN AS
$$
DECLARE
    v_row_count INT;
BEGIN
    
    SELECT COUNT(*)
    INTO v_row_count
    FROM club_membership
    WHERE roll_no = p_roll_no AND club_id = p_old_club_id;
    
    IF v_row_count > 0 THEN
        UPDATE club_membership
        SET club_id = p_new_club_id
        WHERE roll_no = p_roll_no AND club_id = p_old_club_id;
        
        RETURN TRUE;
    ELSE
        RETURN FALSE; -- Roll number with the old club ID not found
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        -- Handle exceptions if necessary
        RETURN FALSE;
END;
$$
LANGUAGE plpgsql;

select change_club_id(110,7,3);
select * from club_membership where club_id = 3



select * from marksheet order by roll_no;
alter table marksheet add column percentage numeric;
alter table marksheet;
alter column percentage set data type numeric(4,2);

---cursor to insert total percentage
do $$
declare 
percent cursor for select roll_no,total_marks from marksheet;
rollno marksheet.roll_no%type;
totalmarks marksheet.total_marks%type;
per marksheet.percentage%type;
begin
open percent;
loop
fetch percent into rollno,totalmarks;
exit when not found;
per=(totalmarks/5.0) ;
update marksheet set percentage =per
where current of percent;
end loop;
close percent;
end;
$$

select * from marksheet where total_marks>400 order by total_marks desc
select * from failed_students order by total_marks desc
update marksheet set fee_marks=34 where roll_no=103;

create or replace function update_marks()
returns trigger as $$
begin
    -- Calculate the new total_marks and percentage for the updated row
    new.total_marks = new.fee_marks + new.ds_marks + new.dbms_marks + new.maths_marks + new.java_marks;
    new.percentage = new.total_marks / 5.00;

    -- Return the modified row
    return new;
end;
$$
language plpgsql;

create trigger change_marks
before update on marksheet
for each row
when (old.fee_marks is distinct from new.fee_marks or
      old.ds_marks is distinct from new.ds_marks or
      old.dbms_marks is distinct from new.dbms_marks or
      old.maths_marks is distinct from new.maths_marks or
      old.java_marks is distinct from new.java_marks)
execute function update_marks();

create view Star_batch as select
roll_no,
first_name,
last_name,
total_marks,
percentage	
from marksheet
where fee_marks > 34
and ds_marks > 34
and dbms_marks > 34
and maths_marks > 34
and java_marks > 34
and total_marks>400;

select * from star_batch order by total_marks desc



Create Table Students_backup
(
    Roll_no int primary key, 
	FirstName varchar(20),
	LastName Varchar(20),
	Father_name varchar (20),
	Mother_Name varchar(20),
	Student_email varchar(20),
	Student_MobileNo numeric,
	Student_DOB date,
	Student_Age int,
	Student_Gender varchar(15),
    department_name varchar(20),
	Student_City varchar(20),
	Student_State varchar(20),
	mentor_id int,
	enrollment_no numeric 
);
-----------------------------------------------
create or replace function backup_delete_function()
returns trigger as $$
begin

    insert into students_backup (roll_no, firstname, lastname, father_name, mother_name, student_email, student_mobileno, student_dob, student_age, student_gender, department_name, student_city, student_state, mentor_id,enrollment_no)
    values (old.roll_no, old.firstname, old.lastname, old.father_name, old.mother_name, old.student_email, old.student_mobileno, old.student_dob, old.student_age, old.student_gender, old.department_name, old.student_city, old.student_state,old.mentor_id,old.enrollment_no);
    

    delete from marksheet
    where roll_no = old.roll_no;
    
    delete from mentor
    where roll_no = old.roll_no;
	
	delete from club_membership
    where roll_no = old.roll_no;

    return old;
end;
$$ language plpgsql;

create trigger backup_delete_trigger
before delete on students_information
for each row
execute function backup_delete_function();
--------------------------------------
insert into students_information (roll_no) values (401)
insert into marksheet (roll_no) values (401)
insert into club_membership (roll_no,membership_id) values (401,701)

select * from club_membership where roll_no = 401
select * from marksheet where roll_no = 401
select * from students_information where roll_no = 401

delete from students_information where roll_no=401

------procedure to change enrollment_no
create or replace procedure change_enrollment_no(
    in old_roll_no int,
    in new_enrollment_no numeric
)
language plpgsql
as $$
begin
    -- Temporarily remove foreign key constraints
    alter table marksheet drop constraint if exists marks_enrollmentno;
    alter table mentor drop constraint if exists mentor_enrollment_no_fkey;

    -- Update the enrollment number in all three tables
    update students_information
    set enrollment_no = new_enrollment_no
    where roll_no = old_roll_no;

    update marksheet
    set enrollment_no = new_enrollment_no
    where roll_no = old_roll_no;

    update mentor
    set enrollment_no = new_enrollment_no
    where roll_no = old_roll_no;

    -- Recreate foreign key constraints
    alter table marksheet add constraint marks_enrollmentno foreign key (enrollment_no) references students_information (enrollment_no);
    alter table mentor add constraint mentor_enrollment_no_fkey foreign key (enrollment_no) references students_information (enrollment_no);
end;
$$;

call change_enrollment_no(134,2200217010244);



select * from courses
alter table courses add column course_credit int
update courses set course_credit = 5 where course_shortname = 'MATHS' 


--procedure change_course_credit()
create or replace procedure change_course_credit(
course_short_name varchar (30),
new_credit int
) as $$
begin
update courses set course_credit=new_credit where course_shortname =course_short_name;
end;
$$
language plpgsql

call change_course_credit('JAVA',6)
----------------------------------------------
--procedure to change faculty phone number
create or replace procedure change_faculty_phoneno(
    in facultyid int,
    in new_phone_no numeric
)
language plpgsql
as $$
declare
    existing_phone_no numeric;
begin
    if length(new_phone_no::text) <> 10 then
        raise notice 'Phone number must be exactly 10 digits.';
    else
    select into existing_phone_no faculty_phoneno
    from faculty
    where faculty_id <> facultyid and faculty_phoneno = new_phone_no;

    
    if existing_phone_no is not null then
        raise notice 'Phone number % already exists in the faculty table.', new_phone_no;
    else
        -- Update the phone number for the faculty member
        update faculty
        set faculty_phoneno = new_phone_no
        where faculty_id = facultyid;

    
        update mentor
        set mentor_phoneno = new_phone_no
        where mentor_id=facultyid;

    
        raise notice 'Phone number updated for faculty ID % to %', facultyid, new_phone_no;
    end if;
	end if;
end;
$$;

call change_faculty_phoneno(203,9457812342)

select * from faculty where faculty_id=203
select * from mentor where mentor_id=203
-----------------------------------------------
--procedure to get course name and course code by course id
create or replace procedure get_course(dept_id int)
as $$
declare 
name varchar(10) := (select department_name from departments where department_id = dept_id);
code varchar(10) := (select department_code from departments where department_id = dept_id);
begin
raise notice 'For department id %, Department Name is % and department code is %', dept_id, name, code;
end;
$$
language plpgsql;


-----------------------------------------------
--function to enrolla a student in club

select  enroll_student_in_club(102,7)

select * from club_membership

CREATE OR REPLACE FUNCTION enroll_student_in_club(
    student_roll_no INT,
    clubid INT
)
RETURNS VOID AS $$
DECLARE
    membership_id INT;
BEGIN
    -- Check if the student is already enrolled in the club
    IF EXISTS (
        SELECT 
        FROM club_membership
        WHERE roll_no = student_roll_no
        AND club_id = clubid
    ) THEN
        RAISE NOTICE 'Student with roll_no % is already enrolled in Club %', student_roll_no, club_id;
    ELSE
        -- Generate a unique membership ID (you may use a sequence)
        membership_id :=( (select count (*) from club_membership)+1);

        -- Insert the enrollment record into the club_membership table
        INSERT INTO club_membership (membership_id, club_id, roll_no, join_date)
        VALUES (membership_id, clubid, student_roll_no, CURRENT_DATE);
    END IF;
END;
$$ LANGUAGE plpgsql;


drop function enroll_student_in_club(
    student_roll_no INT,
    club_id INT
)


create or replace function enroll_student_in_club(
    student_roll_no int,
    clubid int
)
 returns void as $$
declare
    membership_id int:=((select count(*) from club_membership)+1);
begin
    
    if exists (
        select 
        from club_membership
        where roll_no = student_roll_no
        and club_id = clubid
    ) then
        raise notice 'Student with roll_no % is already enrolled in Club %', student_roll_no, club_id;
    else
    
        insert into club_membership (membership_id, club_id, roll_no, join_date)
        values (membership_id, clubid, student_roll_no, current_date);
    end if;
end;
$$ language plpgsql;


-------------------------
--function to search student by city

drop function search_students_by_city(city VARCHAR(20))
CREATE OR REPLACE FUNCTION search_students_by_city(city VARCHAR(20))
RETURNS TABLE (
    roll_no INT,
    firstname VARCHAR(20),
    lastname VARCHAR(20),
    student_city VARCHAR(20)

)
AS $$
BEGIN
    RETURN QUERY SELECT si.roll_no, si.firstname, si.lastname, si.student_city
                 FROM students_information si
                 WHERE si.student_city = city;
END;
$$
LANGUAGE plpgsql;

select search_students_by_city('Mumbai')


------------------------------
--  List Students with No Club Memberships Using a Subquery:

SELECT firstname, lastname
FROM students_information
WHERE roll_no NOT IN (
    SELECT roll_no
    FROM club_membership
);

--  Calculate Average Marks for Students in a Specific Department Using a Subquery:

SELECT department_name, AVG(total_marks) AS average_marks
FROM marksheet
WHERE department_name = '<department_name>'
GROUP BY department_name;

-- Find Courses with More Than a Certain Number of Students Using a Subquery:

SELECT course_name
FROM courses
WHERE course_shortname IN (
    SELECT course_shortname
    FROM marksheet
    GROUP BY course_shortname
    HAVING COUNT(roll_no) > <minimum_student_count>
);

-- Find Students with the Highest Marks Using a Subquery:

SELECT si.firstname, si.lastname, m.total_marks
FROM students_information si
INNER JOIN marksheet m ON si.roll_no = m.roll_no
WHERE m.total_marks = (
    SELECT MAX(total_marks)
    FROM marksheet
);

-- List Faculty and Their Associated Department Names using INNER JOIN:

SELECT f.faculty_name, d.department_name
FROM faculty f
INNER JOIN departments d ON f.department_name = d.department_name;

--  List Students and Their Department Names using INNER JOIN:

SELECT si.firstname, si.lastname, d.department_name
FROM students_information si
INNER JOIN departments d ON si.department_name = d.department_name;

-- List Clubs with Most Members:

SELECT c.club_name, COUNT(cm.roll_no) AS member_count
FROM clubs_organization c
LEFT JOIN club_membership cm ON c.club_id = cm.club_id
GROUP BY c.club_name
ORDER BY member_count DESC;

-- List Students by Age Range:

SELECT firstname, lastname, student_age
FROM students_information
WHERE student_age BETWEEN <min_age> AND <max_age>;

--Query 
--Give name and roll_no of student who are from 'Mumbai' city and have total marks>400
select firstname,lastname,roll_no from students_information where student_city ='Mumbai' and roll_no in
(select roll_no from marksheet where total_marks>400 );

--Query
--Give name of Students who have taken part in 'Nritya' club;
select firstname,lastname from students_information inner join club_membership on 
club_membership.roll_no=students_information.roll_no inner join clubs_organization on 
club_membership.club_id=clubs_organization.club_id where club_name='Nritya';

--give name of students taht took part in more than 1 club
select students_information.roll_no, students_information.firstname, students_information.lastname, COUNT(students_information.roll_no) 
as club_count
from students_information
INNER JOIN club_membership ON club_membership.roll_no = students_information.roll_no
INNER JOIN clubs_organization ON club_membership.club_id = clubs_organization.club_id
group by students_information.roll_no, students_information.firstname, students_information.lastname
having count(students_information.roll_no) > 1;


--give roll no of students those who are part of more than 1 club
SELECT roll_no, COUNT(*) AS club_count
FROM club_membership
GROUP BY roll_no
HAVING COUNT(*) > 1;

--query : give details of student who has total marks more than  400 but is not in starbatch
select * from marksheet where total_marks>400 and roll_no not in(select roll_no from star_batch);