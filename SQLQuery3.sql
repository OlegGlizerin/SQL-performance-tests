select * 
	from dbo.Books
    RIGHT JOIN (SELECT * from dbo.Library) a ON dbo.Books.Id = a.Id;


select * 
	from dbo.Books;



	INSERT INTO dbo.LibConnector (Id, Data, SystemData,Employee,Boolean)
VALUES (1, 'DATA', 'SYSTEM DATA', 'Oleg', 1);
	INSERT INTO dbo.LibConnector (Id, Data, SystemData,Employee,Boolean)
VALUES (2, 'DATA', 'SYSTEM DATA', 'Oleg', 1);
	INSERT INTO dbo.LibConnector (Id, Data, SystemData,Employee,Boolean)
VALUES (3, 'DATA', 'SYSTEM DATA', 'Oleg', 1);
	INSERT INTO dbo.LibConnector (Id, Data, SystemData,Employee,Boolean)
VALUES (4, 'DATA', 'SYSTEM DATA', 'Oleg', 1);
	INSERT INTO dbo.LibConnector (Id, Data, SystemData,Employee,Boolean)
VALUES (5, 'DATA', 'SYSTEM DATA', 'Oleg', 1);
	INSERT INTO dbo.LibConnector (Id, Data, SystemData,Employee,Boolean)
VALUES (6, 'DATA', 'SYSTEM DATA', 'Oleg', 1);
	INSERT INTO dbo.LibConnector (Id, Data, SystemData,Employee,Boolean)
VALUES (7, 'DATA', 'SYSTEM DATA', 'Oleg', 1);
	INSERT INTO dbo.LibConnector (Id, Data, SystemData,Employee,Boolean)
VALUES (8, 'DATA', 'SYSTEM DATA', 'Oleg', 1);
	INSERT INTO dbo.LibConnector (Id, Data, SystemData,Employee,Boolean)
VALUES (9, 'DATA', 'SYSTEM DATA', 'Oleg', 1);
	INSERT INTO dbo.LibConnector (Id, Data, SystemData,Employee,Boolean)
VALUES (10, 'DATA', 'SYSTEM DATA', 'Oleg', 1);
	INSERT INTO dbo.LibConnector (Id, Data, SystemData,Employee,Boolean)
VALUES (11, 'DATA', 'SYSTEM DATA', 'Oleg', 1);



INSERT INTO dbo.LibConnector (Id, Data, SystemData,Employee,Boolean)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0, 7), 'SYSTEM DATA', 'Oleg', 1);
INSERT INTO dbo.LibConnector (Id, Data, SystemData,Employee,Boolean)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0, 7), 'SYSTEM DATA', 'Oleg', 1);
INSERT INTO dbo.LibConnector (Id, Data, SystemData,Employee,Boolean)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0, 7), 'SYSTEM DATA', 'Oleg', 1);
INSERT INTO dbo.LibConnector (Id, Data, SystemData,Employee,Boolean)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0, 7), 'SYSTEM DATA', 'Oleg', 1);
INSERT INTO dbo.LibConnector (Id, Data, SystemData,Employee,Boolean)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0, 7), 'SYSTEM DATA', 'Oleg', 1);

select * from dbo.LibConnector;


	INSERT INTO dbo.Books(Id, Name)
VALUES (FLOOR(RAND() * 4001) + 100, 'DATA');

	INSERT INTO dbo.Books(Id, Name)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0 , 7));
INSERT INTO dbo.Books(Id, Name)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0 , 7));
INSERT INTO dbo.Books(Id, Name)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0 , 7));
INSERT INTO dbo.Books(Id, Name)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0 , 7));
INSERT INTO dbo.Books(Id, Name)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0 , 7));
INSERT INTO dbo.Books(Id, Name)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0 , 7));
INSERT INTO dbo.Books(Id, Name)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0 , 7));


select * from dbo.LibConnector;


select SUBSTRING(CONVERT(varchar(255), NEWID()), 0, 7)



INSERT INTO dbo.Library(Id, LibraryName)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0 , 7));
INSERT INTO dbo.Library(Id, LibraryName)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0 , 7));
INSERT INTO dbo.Library(Id, LibraryName)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0 , 7));
INSERT INTO dbo.Library(Id, LibraryName)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0 , 7));
INSERT INTO dbo.Library(Id, LibraryName)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0 , 7));
INSERT INTO dbo.Library(Id, LibraryName)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0 , 7));
INSERT INTO dbo.Library(Id, LibraryName)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0 , 7));
INSERT INTO dbo.Library(Id, LibraryName)
VALUES (FLOOR(RAND() * 4001) + 100, SUBSTRING(CONVERT(varchar(255), NEWID()), 0 , 7));

select * from dbo.Books


select Id, sum(Id) as allSum, avg(Id) as allAvg, count(*) as countAll
from dbo.Books
where dbo.Books.Id in(select Id from dbo.LibConnector where Id > 5)
group by dbo.Books.Id



	