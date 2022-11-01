select * from Hang;
select * from SanPham;

select * from Hang order by Tenhang desc;
select * from DSSanPham order by Gia desc;
select MaHang,Diachi ,Dienthoai from Hang where Tenhang like 'Asus' ;
select * from DSSanPham where Soluong <11;
select tenSP,Mota,Donvi,Gia,Soluong from  DSSanPham,Hang where Tenhang like 'Asus' ;

select count(*) as SoHang from Hang ;
select count(*) as SoluongSanPham from DSSanPham ;
select sum(Soluong) as Tongsoluong from DSSanPham;
  