create table Customer(
	CustomerId int primary key,
	Name nvarchar(50) not null,
	City nvarchar(50) not null,
	Country nvarchar(50) not null,
	Phone nvarchar(15) not null,
	Email nvarchar(50) not null
);

create table CustomerAccount(
	AccountNumber char(9) primary key,
	CustomerId int not null foreign key references Customer(CustomerId),
	Balance money,
	MinAccount money
);

create table CustomerTransaction(
	TransactionId int primary key,
	AccountNumber char(9) not null foreign key references CustomerAccount(AccountNumber),
	TransactionDate smalldatetime not null check(TransactionDate <= getdate()) default getdate(),
	Amount money not null check(Amount >0),
	DepositorWithdraw bit not null
);

drop table CustomerTransaction;
drop table CustomerAccount;
drop table Customer;