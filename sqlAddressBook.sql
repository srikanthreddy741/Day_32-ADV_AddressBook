--UC-1--

create database AddressBook_Service

use AddressBook_Service

---UC-2--create a Address book table
create table AddressBook
(
FirstName varchar(50) not null,
LastName varchar(50) not null,
Address varchar(100) not null,
City varchar(50) not null,
State varchar(50) not null,
Zipcode varchar(50) not null,
PhoneNumber varchar(50) not null,
Email varchar(50) not null
)
Select * from AddressBook

--UC-3--insert new contact details
Insert into AddressBook values
('srikanth','Reddy' , 'Lingapoor' , 'Kamareddy','Telangana','503111','9000175741','abc@gmail.com'),
('shoban','Reddy' , 'Devanpally' , 'Kamareddy','Telangana','503111','9474584934','dabc@gmail.com'),
('shirisha','Reddy' , 'Vepagunta' , 'Visakhapatnam','AndhraPradesh','530048','9597584934','davc@gmail.com')
select * from AddressBook


--Uc-4--edit existing contact person using their name
update AddressBook set FirstName='Srikanth',LastName='Reddy',Address='Kamareddy',city='Nizamabad',state='Telangana',Zipcode='503112',PhoneNumber='9000175741',Email='sri@gmail.com' where FirstName='srikanth'
select * from AddressBook

--UC-5--Delete a person using persons name
delete from AddressBook where FirstName='shirisha'
select * from AddressBook

--UC-6--Retrieve person belong to city or state from addressbook
select * from AddressBook where city='Nizamabad' or state='Telangana'
select FirstName from AddressBook where city='Nizamabad' or state='Telangana'

--UC-7--Ability to Understand size of Addressbook by City or state(indicate size of count)
select count(state) from AddressBook
select count(City) from AddressBook

--UC-8--retrive the persons name sorted Alphabetically for a given city
select FirstName from AddressBook order by city
select * from AddressBook order by city,FirstName

--UC-9--Identify each addressbook by name and type
alter table AddressBook add Type varchar(100) 
select * from AddressBook
Insert into AddressBook(FirstName,LastName ,Address,City,State,Zipcode,PhoneNumber,Email) Values('Vagisha','Vignesh','12th main','Bengaluru','Karnataka',456765,9876545678,'stu@gmail.com')

UPDATE AddressBook set Type='Friends' where FirstName='Srikanth';
UPDATE AddressBook set Type='Proffession' where FirstName='shoban';
UPDATE AddressBook set Type='Friends' where FirstName='Vagisha';

select * from AddressBook

--UC-10--Number of contact persons by type
select Type, count(Type) from AddressBook group by Type

--UC-11--Add person to Both Friend and Family
insert into AddressBook values
('shashi','Reddy','NAD','biknoor','ramayampet','567585','8796869504','rtd@gmail.com','Friend')
select * from AddressBook