create table NhanVien(
	tenNV nvarchar(255) not null,
	ngaysinh date not null,
	dienthoai varchar(15) primary key,
	diachi ntext not null,
	bangcap nvarchar(20) not null,
	chucvu nvarchar(25) not null,
	mucluong decimal(12,4) not null check(mucluong >=0)
);

create table ThietBi(
	soluong int not null check(soluong >0),
	tenTB nvarchar not null,
	maTB varchar(20) primary key
);

create table BoPhan(
	bophan nvarchar(25) not null,
	maBP varchar(20) primary key
);

create table NhanVien_ThietBi(
	sodienthoai varchar(15) not null foreign key references NhanVien(dienthoai),
	thietbi varchar(20) not null foreign key references ThietBi(maTB)
);


--Delete Table:
--drop table NhanVien;
--drop table ThietBi;
--drop table BoPhan;
--drop table NhanVien_ThietBi;
