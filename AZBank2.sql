insert into Customer(CustomerId,Name,City,Country,Phone,Email)
			  values('123',N'Nguyễn Văn An',N'Hà Nội',N'Hà Nội','0123456789','nguyenan234@gmail.com'),
			        ('124',N'Hà Văn Bê',N'Hà Nội',N'Hà Nội','0123455555','habe@gmail.com');
select * from Customer;

insert into CustomerAccount(AccountNumber,CustomerId,Balance,MinAccount)
			  values('1234555','123','900000','9000');
			  values('1234566','124','900000','9000');
select * from CustomerAccount;

insert into CustomerTransaction(TransactionId,AccountNumber,TransactionDate,Amount,DepositorWithdraw)
			  values('1','1234555','2022-11-23','2','1'),
					('2','1234566','2022-11-23','4','1')
select * from CustomerTransaction;

select * from Customer where City like N'Hà Nội';

select * from CustomerAccount where CustomerId in
(select CustomerId from Customer where Name like N'Nguyễn Văn An');

select * from CustomerAccount where CustomerId in
(select CustomerId from Customer where Phone like '0123456789');

select * from CustomerAccount where CustomerId in
(select CustomerId from Customer where Email like 'nguyenan234@gmail.com');