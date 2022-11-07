create table SanPham12(
	MaSoSP varchar(25) primary key,
	NgaySX date not null,
	MaLoai varchar(25) foreign key references LoaiSanPham(MaSanPham)
);

create table LoaiSanPham(
	TenSanPham nvarchar(255) not null,
	MaSanPham varchar(25) primary key,
	idNCTN varchar(25) foreign key references NguoiChiuTN(MaNCTN)
);

create table NguoiChiuTN(
	Ten nvarchar(30) not null,
	MaNCTN varchar(25) primary key,
);

drop table NguoiChiuTN;
drop table LoaiSanPham;
drop table SanPham12;

--------------------------

insert into SanPham12(MaSoSP,NgaySX)
	values('Z37111111','2009-12-12');
select * from SanPham12;

insert into LoaiSanPham(TenSanPham,MaSanPham)
	values('Máy tính sách tay Z37','Z37E');
select * from LoaiSanPham;

insert into NguoiChiuTN(Ten,MaNCTN)
	values(N'Nguyễn Văn An','987688');
select * from NguoiChiuTN;

--------------------------
--4
select * from LoaiSanPham;
select * from SanPham12;
select * from NguoiChiuTN;

--5
select * from LoaiSanPham order by TenSanPham asc; 
select * from NguoiChiuTN order by Ten asc; 
select * from LoaiSanPham where MaSanPham in
(select MaSanPham from LoaiSanPham where MaSanPham like 'Z37E');
select * from SanPham12 where MaSoSP in
(select MaSoSP from NguoiChiuTN where Ten like N'Nguyễn Văn An') order by MaSoSP desc

--6
select count(*) as SoSanPham from LoaiSanPham;
select count(*) as TrungBinhSP from LoaiSanPham;
select * from SanPham12 a inner join LoaiSanPham b
on a.MaLoai = b.idNCTN;

select * from NguoiChiuTN c
inner join SanPham12 a
inner join LoaiSanPham b
on a.MaSoSP = b.MaSanPham
on c.MaNCTN = b.MaSanPham;