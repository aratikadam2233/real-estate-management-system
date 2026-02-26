SELECT * FROM realestate.admin_signup;

create table Add_type 
(
Add_id int auto_increment primary key,
Type_Name nvarchar(50),
description nvarchar(50),
image nvarchar(500)
);


create table Add_Property
(
  p_id int auto_increment primary key,
  property_name nvarchar(50),
  location nvarchar(50),
  price nvarchar(10),
  description nvarchar(50),
  image nvarchar(500),
  agentname nvarchar(50)
);

create table Forget_Password
(
f_id int auto_increment primary key,
email nvarchar(30),
password nvarchar(10)
);
 
create table My_Booking 
(
b_id int auto_increment primary key,
fullname nvarchar(50),
emailaddress nvarchar(50),
phone nvarchar(10),
property nvarchar(20),
date nvarchar(10),
message nvarchar(60)
);