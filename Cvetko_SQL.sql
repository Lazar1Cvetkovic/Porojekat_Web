create table Kupci(
id int not null primary key identity(1,1),
ime nvarchar(50) not null,
email nvarchar(50)not null,
Firma nvarchar(50) not null,



)


create table Developer(


id int not null primary key identity(1,1),
ime nvarchar(50) not null,
Pr_Jezik nvarchar(50) not null,
email nvarchar(50)not null,



)


create table Investitor(


id int not null primary key identity(1,1),
ime nvarchar(50) not null,
Kolicina int not null,
email nvarchar(50)not null,



)

