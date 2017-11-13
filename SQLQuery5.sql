select * from Person.Person persons
	cross join Person.StateProvince
	right join (select * from Sales.PersonCreditCard) cards on cards.BusinessEntityID = persons.BusinessEntityID
	right join (select * from Person.Password) passwords on passwords.BusinessEntityID = persons.BusinessEntityID
	right join Sales.CreditCard creditCard on creditCard.CreditCardID = cards.CreditCardID and creditCard.CardType = 'Distinguish'
	where persons.FirstName like '%X%';