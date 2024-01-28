create database sqlproject;
use sqlproject;

create table BloodSamples2024(
PatientID int not null,
PatientName varchar(255) not null,
BloodType varchar(255) not null,
PatientConatct int,
SevereMedicalCondition varchar(255),
primary key (PatientID)
);

alter table BloodSamples2024 Drop PatientConatct;
alter table BloodSamples2024 ADD PatientAge int;

Insert into BloodSamples2024 values
(101, 'Ram Swar', 'O+', 'None', 44)

Insert into BloodSamples2024 values
(102, 'Geet Singh', 'a+', 'None', 20),
(103, 'Prahas Das', 'AB+', 'Diabetes', 40);

Insert into BloodSamples2024 values
(104, 'Preeti Singh', 'O+', 'Hypertension', 52),
(105, 'Nikita Jain', 'AB+', 'None', 32),
(106, 'Om Prakash', 'B+', 'Diabetes', 57),
(107, 'Sourav Kumar', 'O+', 'None', 27),
(108, 'Jenisa Pinto', 'AB+', 'Depression', 35),
(109, 'Freda Balasaria', 'B+', 'None', 39),
(110, 'Tyagi Mehta', 'O+', 'Cholesterol', 44);

select * from BloodSamples2024;

select * from BloodSamples2024;

# Q. Select distinct Blood Samples?
A> 
Select Distinct BloodType from BloodSamples2024;

#Q. Change Jenisa Pinto Age to 36?
#A>
Update BloodSamples2024
set PatientAge = '36'
where PatientName = 'Jenisa Pinto';
Select * from BloodSamples2024;

#Q. Find PatientID whoose Blood type is 'O+'?
#A>
Select PatientID from BloodSamples2024
where BloodType = 'O+';

#Q. Find PatientID whoose Blood type is 'AB+' and who does not have any Medical COnditions?
#A>
Select PatientID from BloodSamples2024
where BloodType = 'AB+'
AND SevereMedicalCondition = 'None';

#Q. Find Patients with either 'AB+' or "B+"?
#A>
Select * from BloodSamples2024
where BloodType = 'AB+'
OR BloodType = 'B+';

#Q. Find all Patients starting with the Letter 'P'?
#A>
Select * from BloodSamples2024
where PatientName like 'P%';

#Q. Find all Patients whoose 2nd Letter is 'a'?
#A>
select * from BloodSamples2024
where PatientName like '_a%';

#Q. Find all data where the patients are 'o+'?
#A>
select * from BloodSamples2024
where BloodType IN ('O+');

#Q. Find all patients between the age of 20 to 40?
#A>
Select * from BloodSamples2024
where PatientAge between 20 and 40;

#Q. Arrange all Data alphabetically according to the Patients Name?
#A> 
Select * from BloodSamples2024
order by PatientName;

Alter Table BloodSamples2024 ADD PatientAddress varchar(255);
select * from BloodSamples2024;
Alter Table BloodSamples2024
Drop column PatientAddress;

#Q. What are the number of Patients who have given their Blood Samples?
#A>
select Count(PatientID) from BloodSamples2024;

#Q. What are the number of Patients whose Blood is "AB+"?
#A>
select Count(PatientID) from BloodSamples2024 where BloodType = 'AB+';

#Q. What is the Max Age of the Patients?
#A>
select MAX(PatientAge) from BloodSamples2024;

#Q. What is the Min Age of the Patients?
#A>
select MIN(PatientAge) from BloodSamples2024;

#Q. What is the Average Age of the Patients?
#A>
select AVG(PatientAge) from BloodSamples2024;

#Q. Find the average age of Patients with 'O+'?
#A>
Select BloodType, AVG(PatientAge) from BloodSamples2024
group by BloodType;

#Q. Choose Patient whoose name does not start with 'p' or 'g'?
#A>
select * from BloodSamples2024 Where not PatientName like 'p%';

select * from BloodSamples2024;

#JOINING 2 TABLES

CREATE TABLE PatientData(
PatientID int not null, 
PatientName varchar (255),
PatientAddress varchar (255),
PatientCity varchar (255),
Gender varchar(255)
);

Insert into PatientData values
(101, 'Ram Swar', 'Juhu', 'Mumbai', 'M'),
(102, 'Geet Singh', 'Andheri', 'Mumbai', 'F'),
(103, 'Prahas Das', 'Sion', 'Mumbai', 'M'),
(104, 'Preeti Singh', 'Rohini', 'Delhi', 'F'),
(105, 'Nikita Jain', 'Juhu', 'Mumbai', 'F'),
(106, 'Om Prakash', 'Juhu', 'Mumbai', 'M'),
(107, 'Sourav Kumar', 'CP', 'Delhi', 'M'),
(108, 'Jenisa Pinto', 'Malabar Hill', 'Mumbai', 'F'),
(109, 'Freda Balasaria', 'Worli', 'Mumbai', 'F'),
(110, 'Tyagi Mehta', 'Saket', 'Delhi', 'M');

select * from PatientData;

#Q. Inner Join both tables through PatientID?
#A>
select * from BloodSamples2024 
inner join PatientData
on BloodSamples2024.PatientID = PatientData.PatientID;

#Q. LEFT JOIN
#A>
select * from BloodSamples2024
Left Join PatientData
on BloodSamples2024.PatientID = PatientData.PatientID;

#UNION
#
select * from BloodSamples2024
      union
      select * from PatientData
      order by PatientID;


