create table Hang(
	MaHang varchar(25) primary key,
	Tenhang varchar(25) not null,
	Diachi nvarchar(255) not null,
	Dienthoai varchar(15) 
);

create table DSSanPham(
	TenSP nvarchar(50) not null,
	Mota ntext,
	Donvi nvarchar(20) not null,
	Gia decimal(12,4) not null check(Gia >=0),
	Soluong int not null,
	id int primary key identity(1,1)
);

create table Hang_SanPham(
	ma varchar(25) not null foreign key references Hang(MaHang),
	idSP int not null foreign key references DSSanPham(id)
);

drop table Hang_SanPham;
drop table DSSanPham;
drop table Hang;