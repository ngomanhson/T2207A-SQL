create table NHACUNGCAP(
	MaNhaCC varchar(25) primary key,
	TenNhaCC nvarchar(255) not null,
	DiaChi ntext not null,
	SoDT varchar(15) not null,
	MaSoThue varchar(15) not null
);
create table LOAIDICHVU(
	MaLoaiDV varchar(25) primary key,
	TenLoaiDV nvarchar(50) not null
);
create table MUCPHI(
	MaMP varchar(15) primary key,
	DonGia decimal(12,4) not null check(DonGia >=0),
	MoTa ntext
);
create table DONGXE(
	DongXe varchar(50) primary key,
	HangXe varchar(50) not null,
	SoChoNgoi int not null
);
create table DANGKYCUNGCAP(
	MaDKCC varchar(25) primary key,
	MaNhaCC varchar(25) not null foreign key references NHACUNGCAP(MaNhaCC),
	MaLoaiDV varchar(25) not null foreign key references LOAIDICHVU(MaLoaiDV),
	DongXe varchar(50) not null foreign key references DONGXE(DongXe),
	MaPM varchar(15) not null foreign key references MUCPHI(MaMP),
	NgayBatDauCungCap date not null,
	NgayKetThucCungCap date not null,
	SoLuongXeDangKy int not null
);



drop table DANGKYCUNGCAP;
drop table DONGXE;
drop table MUCPHI;
drop table LOAIDICHVU;
drop table NHACUNGCAP;
