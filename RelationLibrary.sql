--create database LibraryDb
--use LibraryDb

--create table Genres(
--Id int primary key identity,
--Name nvarchar(50)
--)

--create table Authors(
--Id int primary key identity,
--FullName nvarchar(50)
--)

--create table AuthorGenres(
--Id int primary key identity,
--AuthorId int references Authors(Id),
--GenreId int references Genres(Id)
--)

--create table Books(
--Id int primary key identity,
--Name nvarchar(60) not null,
--Price decimal(10,2) not null,
--Count int not null,
--AuthorId int references Authors(Id),
--GenreId int references Genres(Id)
--)

--create table Customers(
--Id int primary key identity,
--Name nvarchar(30) not null,
--Surname nvarchar(60)
--)

--create table Orders(
--Id int primary key identity,
--BookId int references Books(Id),
--CustomerId int references Customers(Id),
--GettingDate datetime default getdate(),
--ReturnDate datetime
--)

--insert into Genres values
--('Adventure'),
--('Classic'),
--('Detective'),
--('Fantasy'),
--('Horror'),
--('Self-Help'),
--('Fiction')

--insert into Authors values
--('Stephen King'),
--('Louisa May Alcott'),
--('Anthony Horowitz'),
--('Madeline Miller'),
--('Shirley Jackson'),
--('Robin Sharma'),
--('Wilkie Collins'),
--('Stephen Covey'),
--('Stefan Zweig')

--insert into AuthorGenres values
--(1,4),
--(1,5),
--(6,6),
--(3,3),
--(4,4),
--(2,2),
--(8,6),
--(5,5)
--(7,3)

--insert into Books values
--('The Shining',12.5,2,1,4),
--('The Eyes of the Dragon', 20, 3, 1, 5),
--('The 5 AM Club', 9.99, 5, 6, 6),
--('The House of Silk', 10.99, 7, 3, 3),
--('The Moonstone',15.90,4,7,3),
--('Circe',22.90,1,4,4),
--('Little Women',11.50,4,2,2),
--('The Haunting of Hill House', 19.99, 2, 5,5),
--('The 7 Habits of Highly Effective People',23.50, 1, 8, 6),
--('No Name', 13.50, 2, 7, 7),
--('Fantastic Night',6.99, 5, 9, 7),
--('The Royal Game', 8.99, 3, 9, 7)

--insert into Customers values
--('Ilkin','Bayramov'),
--('Orxan','Abdullayev'),
--('Elvin','Alizade'),
--('Aytac','Ramazanli')

--insert into Orders (BookId, CustomerId) values 
--(10,1),
--(6,4),
--(6,4),
--(5,2),
--(12,3)

--select b.Name 'Book', Price, [Count], g.Name 'Genre' from Books b
--join Genres g
--on b.GenreId=g.Id


--select a.FullName 'Author', b.Name 'Book' from Books b
--join Authors a
--on b.AuthorId=a.Id

--select a.Fullname 'Author', g.Name 'Genre' from AuthorGenres ag
--join Authors a
--on ag.AuthorId=a.Id
--join Genres g
--on ag.GenreId = g.Id

--select c.Name + ' ' + c.Surname 'Customer', b.Name 'Book' from Orders o
--join Customers c
--on o.CustomerId=c.Id
--join Books b
--on o.BookId=b.Id

--update Orders set ReturnDate = getdate()
--where Id =2

--select * from Orders
--where ReturnDate is null
