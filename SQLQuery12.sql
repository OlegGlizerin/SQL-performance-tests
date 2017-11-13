select * from Sales.PersonCreditCard personCreditCards
	right join (select persons.* 
				from Person.Person persons
	cross join Person.StateProvince ) together 
	on personCreditCards.BusinessEntityID = together.BusinessEntityID


	select * from Person.Person persons
	cross join Person.StateProvince
	left join (select * 
			   from Sales.PersonCreditCard) personCreditCards 
	on personCreditCards.BusinessEntityID = persons.BusinessEntityID