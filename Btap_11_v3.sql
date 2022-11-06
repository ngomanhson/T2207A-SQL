--4
select * from KhachHang;
select * from ThueBao;

--5
select * from ThueBao where soTB like '0123456789';
select * from KhachHang where soCMT like '123456789';
select * from ThueBao where soTB in
(select soTB from KhachHang where soCMT like '123456789');
select * from ThueBao where soTB in
(select soTB from KhachHang where ngayDK like '2002-12-12');
select * from ThueBao where soTB in
(select soTB from KhachHang where diachi like N'Hà Nội');

--6
select count(*) as TongKH from KhachHang;
select count(*) as TongTB from ThueBao;
select count(*) as TongTB from ThueBao where soTB in
(select soTB from KhachHang where ngayDK like '2002-12-12');
