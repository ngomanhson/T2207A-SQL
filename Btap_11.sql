create table KhachHang(
	tenKH nvarchar(25) not null,
	soCMT varchar(25) primary key,
	diachi ntext not null
);

create table ThueBao(
	soTB varchar(25) primary key,
	loaiTB nvarchar(50) not null,
	ngayDK date not null,
	idCMT varchar(25) not null foreign key references KhachHang(soCMT)
);




drop table ThueBao;
drop table KhachHang;
