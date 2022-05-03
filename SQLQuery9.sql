Create Database Address_Book -- UC-1 Create DataBase
Go

Create Table Address_Book_Table -- UC-2 Create Address Book Table
(
FirstName varchar(50),
LastName varchar(50),
_address varchar(50),
City varchar(50),
_State varchar(50),
Zip int,
PhoneNumber varchar(12),--With Country Code
email varchar(50)
)

Insert into Address_Book_Table --UC-3 Insert Data to Table
(FirstName,LastName,_address,City,_State,Zip,PhoneNumber,email) 
values('Snehal','Patil','205/2 Amalner','Jalgaon','Maharashtra',425401,'918106529025','snehalpatil@gmail.com')
Go

Insert into Address_Book_Table --UC-3 Insert Data to Table
(FirstName,LastName,_address,City,_State,Zip,PhoneNumber,email) 
values('Vrushali','Patil','205/2 Amalner','Jalgaon','Maharashtra',425401,'917506529025','vrushalipatil@gmail.com')
Go

Insert into Address_Book_Table --UC-3 Insert Data to Table
(FirstName,LastName,_address,City,_State,Zip,PhoneNumber,email) 
values('Pranav','Patil','205/2 Amalner','Dhule','Maharashtra',425401,'918106529025','pranavpatil@gmail.com')
Go


Update Address_Book_Table -- UC-4 Editing Data using FirstName
Set City='Amalner'
where FirstName='Snehal'
Go

Delete -- UC-5-Delete Record Using FirstName
from Address_Book_Table
Where FirstName='Pranav'
Go

select * -- UC-6 Retrieve Record Using City
from Address_Book_Table
Where City='Jalgaon'
Go

select * --Retrieve Using State
from Address_Book_Table
Where _State='Maharashtra'
Go

select count(*)--UC-7-Count
from Address_Book_Table
where City='Jalgaon'
Go

select count(*)--UC-7-Count
from Address_Book_Table
where _State='Maharastra'
Go

select * -- UC-8 Sort FirstName using State 
From Address_Book_Table
Where _State='Maharashtra' 
ORDER BY FirstName
Go

select * -- UC-8 Sort FirstName using City
From Address_Book_Table
Where City='Jalgaon' 
ORDER BY FirstName
Go
Alter Table Address_Book_Table--UC-9 Add Coulumn 
Add RelationType varchar(20) default 'Null'
Go
Update Address_Book_Table
Set RelationType ='Family'
Where FirstName ='Manvi'
Go

Update Address_Book_Table
Set RelationType ='Friend'
Where FirstName ='Washim'
Go

Select *
From Address_Book_Table
Go
