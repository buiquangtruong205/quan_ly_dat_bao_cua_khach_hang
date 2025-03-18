create database QLDB
use QLDB
go

create table THELOAIBAO(
	MaTheLoai int primary key,
	TenTheLoai nvarchar(100) not null
)

create table BAO(
	MaBao int primary key,
	TenBao nvarchar(100) not null,
	HinhThuc nvarchar(100),
	DonGiaKy decimal(10, 2) not null,
	MaTheLoai int not null,
	TonKho int,
	foreign key (MaTheLoai) references THELOAIBAO(MaTheLoai)
)

create table KHACHHANG(
	MaKhachHang int primary key,
	TenKhachHang nvarchar(100) not null,
	DiaChi nvarchar(225) not null,
	SoDienThoai nvarchar(15),
	Email nvarchar(100)
)

create table DONHANG(
	MaDonHang int primary key,
	MaKhachHang int not null,
	NgayDat datetime,
	foreign key (MaKhachHang) references KHACHHANG(MaKhachHang)
)

create table CHITIETHOADON(
	MaChiTietHoaDon int primary key,
	MaDonHang int not null,
	MaBao int not null,
	SoLuongBan int, 
	GiaBan int,
	foreign key (MaDonHang) references DONHANG(MaDonHang),
	foreign key (MaBao) references BAO(MaBao)
)

INSERT INTO THELOAIBAO (MaTheLoai, TenTheLoai) VALUES
(1, 'Thời sự'),
(2, 'Kinh tế'),
(3, 'Giáo dục'),
(4, 'Thể thao'),
(5, 'Văn hóa'),
(6, 'Sức khỏe'),
(7, 'Công nghệ'),
(8, 'Pháp luật'),
(9, 'Môi trường'),
(10, 'Quân sự'),
(11, 'Du lịch'),
(12, 'Ẩm thực'),
(13, 'Khoa học'),
(14, 'Lịch sử'),
(15, 'Tài chính'),
(16, 'Chứng khoán'),
(17, 'Bất động sản'),
(18, 'Tôn giáo'),
(19, 'Nghệ thuật'),
(20, 'Giải trí'),
(21, 'Âm nhạc'),
(22, 'Phim ảnh'),
(23, 'Thời trang'),
(24, 'Chính trị'),
(25, 'Quốc tế'),
(26, 'Xe cộ'),
(27, 'Hàng không'),
(28, 'Hải quân'),
(29, 'Bóng đá'),
(30, 'Cầu lông'),
(31, 'Bóng rổ'),
(32, 'Tennis'),
(33, 'Điền kinh'),
(34, 'Võ thuật'),
(35, 'Esports'),
(36, 'Khởi nghiệp'),
(37, 'Lao động'),
(38, 'Nhân sự'),
(39, 'Bảo hiểm'),
(40, 'Nông nghiệp'),
(41, 'Chăn nuôi'),
(42, 'Thủy sản'),
(43, 'Công nghiệp'),
(44, 'Dịch vụ'),
(45, 'Xuất nhập khẩu'),
(46, 'Thương mại'),
(47, 'Y tế'),
(48, 'Tâm lý học'),
(49, 'Kỹ thuật'),
(50, 'Robot'),
(51, 'AI & Machine Learning'),
(52, 'Big Data'),
(53, 'An ninh mạng'),
(54, 'Blockchain'),
(55, 'Vũ trụ'),
(56, 'Thiên văn học'),
(57, 'Khám phá'),
(58, 'Khảo cổ học'),
(59, 'Tình yêu & Gia đình'),
(60, 'Phong thủy');

INSERT INTO BAO (MaBao, TenBao, HinhThuc, DonGiaKy, MaTheLoai, TonKho) VALUES
(1, 'Báo Thời sự hôm nay', 'Tháng', 50000, 1, 200),
(2, 'Kinh tế Việt Nam', 'Ngày', 60000, 2, 150),
(3, 'Giáo dục số', 'Quý', 45000, 3, 180),
(4, 'Thể thao 24h', 'Tháng', 55000, 4, 220),
(5, 'Văn hóa nghệ thuật', 'Ngày', 48000, 5, 170),
(6, 'Sức khỏe đời sống', 'Quý', 50000, 6, 140),
(7, 'Công nghệ số', 'Ngày', 52000, 7, 130),
(8, 'Pháp luật & Xã hội', 'Quý', 58000, 8, 160),
(9, 'Môi trường xanh', 'Tháng', 46000, 9, 175),
(10, 'Quân sự toàn cảnh', 'Ngày', 62000, 10, 190),
(11, 'Khám phá du lịch', 'Quý', 50000, 11, 210),
(12, 'Ẩm thực bốn phương', 'Ngày', 53000, 12, 125),
(13, 'Khoa học & Đời sống', 'Tháng', 47000, 13, 145),
(14, 'Lịch sử & Hiện đại', 'Quý', 51000, 14, 160),
(15, 'Tài chính hôm nay', 'Ngày', 59000, 15, 155),
(16, 'Chứng khoán số', 'Quý', 64000, 16, 135),
(17, 'Bất động sản online', 'Tháng', 60000, 17, 120),
(18, 'Tôn giáo & Đời sống', 'Ngày', 45000, 18, 110),
(19, 'Nghệ thuật sáng tạo', 'Tháng', 47000, 19, 140),
(20, 'Giải trí tổng hợp', 'Quý', 52000, 20, 130),
(21, 'Âm nhạc hôm nay', 'Ngày', 48000, 21, 170),
(22, 'Phim ảnh 24h', 'Quý', 55000, 22, 180),
(23, 'Thời trang & Xu hướng', 'Tháng', 49000, 23, 125),
(24, 'Chính trị quốc gia', 'Ngày', 53000, 24, 140),
(25, 'Tin tức quốc tế', 'Quý', 58000, 25, 160),
(26, 'Xe cộ & Công nghệ', 'Ngày', 56000, 26, 150),
(27, 'Hàng không thế giới', 'Tháng', 62000, 27, 190),
(28, 'Hải quân & Biển đảo', 'Quý', 61000, 28, 145),
(29, 'Bóng đá Việt Nam', 'Ngày', 54000, 29, 175),
(30, 'Cầu lông & Đời sống', 'Tháng', 50000, 30, 180),
(31, 'Bóng rổ toàn cầu', 'Quý', 49000, 31, 135),
(32, 'Tennis thế giới', 'Ngày', 47000, 32, 120),
(33, 'Điền kinh 24h', 'Tháng', 51000, 33, 125),
(34, 'Võ thuật truyền thống', 'Quý', 48000, 34, 115),
(35, 'Esports & Công nghệ', 'Ngày', 53000, 35, 110),
(36, 'Khởi nghiệp trẻ', 'Quý', 59000, 36, 140),
(37, 'Lao động hôm nay', 'Tháng', 46000, 37, 130),
(38, 'Nhân sự & Quản lý', 'Ngày', 55000, 38, 125),
(39, 'Bảo hiểm & Đời sống', 'Quý', 60000, 39, 145),
(40, 'Nông nghiệp bền vững', 'Tháng', 52000, 40, 140),
(41, 'Chăn nuôi & Thực phẩm', 'Ngày', 47000, 41, 135),
(42, 'Thủy sản & Môi trường', 'Quý', 58000, 42, 125),
(43, 'Công nghiệp 4.0', 'Tháng', 56000, 43, 150),
(44, 'Dịch vụ & Thương mại', 'Ngày', 49000, 44, 120),
(45, 'Xuất nhập khẩu toàn cầu', 'Quý', 62000, 45, 180),
(46, 'Thương mại điện tử', 'Tháng', 51000, 46, 115),
(47, 'Y tế & Chăm sóc sức khỏe', 'Ngày', 53000, 47, 125),
(48, 'Tâm lý học ứng dụng', 'Quý', 50000, 48, 110),
(49, 'Kỹ thuật số', 'Tháng', 58000, 49, 135),
(50, 'Robot & AI', 'Ngày', 60000, 50, 160),
(51, 'AI & Machine Learning', 'Quý', 65000, 51, 150),
(52, 'Big Data hôm nay', 'Tháng', 63000, 52, 140),
(53, 'An ninh mạng', 'Ngày', 62000, 53, 130),
(54, 'Blockchain & Crypto', 'Quý', 67000, 54, 120),
(55, 'Vũ trụ & Không gian', 'Tháng', 55000, 55, 135),
(56, 'Thiên văn học hiện đại', 'Ngày', 57000, 56, 125),
(57, 'Khám phá thiên nhiên', 'Quý', 49000, 57, 110),
(58, 'Khảo cổ học & Bí ẩn', 'Tháng', 52000, 58, 120),
(59, 'Tình yêu & Gia đình', 'Ngày', 47000, 59, 125),
(60, 'Phong thủy & Đời sống', 'Quý', 46000, 60, 115);

INSERT INTO KHACHHANG (MaKhachHang, TenKhachHang, DiaChi, SoDienThoai, Email) VALUES
(1, 'Nguyễn Văn An', 'Hà Nội', '0123456789', 'an.nguyen@gmail.com'),
(2, 'Trần Thị Bích', 'TP Hồ Chí Minh', '0987654321', 'bich.tran@gmail.com'),
(3, 'Lê Văn Cường', 'Đà Nẵng', '0912345678', 'cuong.le@gmail.com'),
(4, 'Phạm Thị Dung', 'Cần Thơ', '0909876543', 'dung.pham@gmail.com'),
(5, 'Bùi Văn Đức', 'Hải Phòng', '0934567890', 'duc.bui@gmail.com'),
(6, 'Hoàng Minh Phúc', 'Huế', '0971122334', 'phuc.hoang@gmail.com'),
(7, 'Đoàn Thị Hạnh', 'Nha Trang', '0901122334', 'hanh.doan@gmail.com'),
(8, 'Nguyễn Văn Hùng', 'Vinh', '0989988776', 'hung.nguyen@gmail.com'),
(9, 'Lê Thị Kim', 'Quảng Ninh', '0918877665', 'kim.le@gmail.com'),
(10, 'Trần Văn Long', 'Bắc Ninh', '0905566778', 'long.tran@gmail.com'),
(11, 'Phạm Thị Mai', 'Thanh Hóa', '0972345678', 'mai.pham@gmail.com'),
(12, 'Vũ Văn Nam', 'Nam Định', '0937654321', 'nam.vu@gmail.com'),
(13, 'Đặng Thị Oanh', 'Bình Định', '0912233445', 'oanh.dang@gmail.com'),
(14, 'Nguyễn Văn Phát', 'Phú Thọ', '0976554433', 'phat.nguyen@gmail.com'),
(15, 'Hoàng Thị Quyên', 'Thái Bình', '0904455667', 'quyen.hoang@gmail.com'),
(16, 'Lê Văn Quý', 'Lào Cai', '0987766554', 'quy.le@gmail.com'),
(17, 'Nguyễn Thị Sang', 'Gia Lai', '0919988776', 'sang.nguyen@gmail.com'),
(18, 'Trần Văn Sơn', 'Tây Ninh', '0905544332', 'son.tran@gmail.com'),
(19, 'Phạm Thị Thu', 'Hà Giang', '0973322114', 'thu.pham@gmail.com'),
(20, 'Bùi Văn Tiến', 'Lạng Sơn', '0933344556', 'tien.bui@gmail.com'),
(21, 'Đỗ Thị Uyên', 'Kon Tum', '0911122233', 'uyen.do@gmail.com'),
(22, 'Nguyễn Văn Vượng', 'Sóc Trăng', '0979988776', 'vuong.nguyen@gmail.com'),
(23, 'Lê Thị Xuyến', 'Tiền Giang', '0908877665', 'xuyen.le@gmail.com'),
(24, 'Trần Văn Yến', 'Vĩnh Long', '0987766554', 'yen.tran@gmail.com'),
(25, 'Phạm Thị Diễm', 'Quảng Bình', '0915544332', 'diem.pham@gmail.com'),
(26, 'Bùi Văn Định', 'Bắc Giang', '0979988771', 'dinh.bui@gmail.com'),
(27, 'Đoàn Thị Ánh', 'Đồng Nai', '0937766554', 'anh.doan@gmail.com'),
(28, 'Nguyễn Văn Bình', 'Bình Phước', '0911122234', 'binh.nguyen@gmail.com'),
(29, 'Lê Thị Châu', 'Đắk Lắk', '0972233445', 'chau.le@gmail.com'),
(30, 'Trần Văn Dũng', 'Kiên Giang', '0906677889', 'dung.tran@gmail.com'),
(31, 'Phạm Thị Hà', 'Bình Dương', '0989988772', 'ha.pham@gmail.com'),
(32, 'Bùi Văn Khoa', 'Cà Mau', '0915544333', 'khoa.bui@gmail.com'),
(33, 'Đỗ Thị Linh', 'Bến Tre', '0973344556', 'linh.do@gmail.com'),
(34, 'Nguyễn Văn Minh', 'Trà Vinh', '0901123344', 'minh.nguyen@gmail.com'),
(35, 'Lê Thị Nga', 'An Giang', '0987766551', 'nga.le@gmail.com'),
(36, 'Trần Văn Phong', 'Đồng Tháp', '0916677888', 'phong.tran@gmail.com'),
(37, 'Phạm Thị Quỳnh', 'Hậu Giang', '0978899000', 'quynh.pham@gmail.com'),
(38, 'Bùi Văn Sáng', 'Quảng Nam', '0933322111', 'sang.bui@gmail.com'),
(39, 'Đỗ Thị Thanh', 'Phú Yên', '0915544322', 'thanh.do@gmail.com'),
(40, 'Nguyễn Văn Trung', 'Ninh Bình', '0976655443', 'trung.nguyen@gmail.com'),
(41, 'Lê Thị Vân', 'Hà Nam', '0904433221', 'van.le@gmail.com'),
(42, 'Trần Văn Xuân', 'Vĩnh Phúc', '0985544331', 'xuan.tran@gmail.com'),
(43, 'Phạm Thị Yến', 'Hòa Bình', '0919987766', 'yen.pham@gmail.com'),
(44, 'Bùi Văn Đạt', 'Tuyên Quang', '0976655432', 'dat.bui@gmail.com'),
(45, 'Đỗ Thị Hoa', 'Yên Bái', '0931122233', 'hoa.do@gmail.com'),
(46, 'Nguyễn Văn Hòa', 'Bắc Kạn', '0913322110', 'hoa.nguyen@gmail.com'),
(47, 'Lê Thị Ngọc', 'Lai Châu', '0977766550', 'ngoc.le@gmail.com'),
(48, 'Trần Văn Thành', 'Điện Biên', '0906677880', 'thanh.tran@gmail.com'),
(49, 'Phạm Thị My', 'Sơn La', '0987766553', 'my.pham@gmail.com'),
(50, 'Bùi Văn Hiếu', 'Cao Bằng', '0919988774', 'hieu.bui@gmail.com'),
(51, 'Đỗ Thị Duyên', 'Hà Tĩnh', '0974433222', 'duyen.do@gmail.com'),
(52, 'Nguyễn Văn Phước', 'Quảng Trị', '0932233445', 'phuoc.nguyen@gmail.com'),
(53, 'Lê Thị Hồng', 'Quảng Ngãi', '0915544433', 'hong.le@gmail.com'),
(54, 'Trần Văn Tiệp', 'Thừa Thiên Huế', '0976677888', 'tiep.tran@gmail.com'),
(55, 'Phạm Thị Trinh', 'Lâm Đồng', '0905544335', 'trinh.pham@gmail.com'),
(56, 'Bùi Văn Nhân', 'Ninh Thuận', '0987766552', 'nhan.bui@gmail.com'),
(57, 'Đỗ Thị Mỹ', 'Bình Thuận', '0919988775', 'my.do@gmail.com'),
(58, 'Nguyễn Văn Đăng', 'Bà Rịa - Vũng Tàu', '0974433224', 'dang.nguyen@gmail.com'),
(59, 'Lê Thị Loan', 'Long An', '0935544335', 'loan.le@gmail.com'),
(60, 'Trần Văn Hạnh', 'Hậu Giang', '0915544434', 'hanh.tran@gmail.com');


INSERT INTO DONHANG (MaDonHang, MaKhachHang, NgayDat) VALUES
(1, 5, '2024-01-15'),
(2, 12, '2024-02-10'),
(3, 7, '2024-03-05'),
(4, 20, '2024-04-22'),
(5, 8, '2024-05-17'),
(6, 3, '2024-06-10'),
(7, 15, '2024-07-02'),
(8, 28, '2024-08-18'),
(9, 9, '2024-09-21'),
(10, 33, '2024-10-26'),
(11, 1, '2024-01-08'),
(12, 40, '2024-02-14'),
(13, 21, '2024-03-19'),
(14, 17, '2024-04-03'),
(15, 6, '2024-05-09'),
(16, 50, '2024-06-24'),
(17, 14, '2024-07-15'),
(18, 45, '2024-08-06'),
(19, 19, '2024-09-30'),
(20, 2, '2024-10-11'),
(21, 11, '2024-01-22'),
(22, 35, '2024-02-28'),
(23, 18, '2024-03-15'),
(24, 31, '2024-04-20'),
(25, 22, '2024-05-11'),
(26, 4, '2024-06-30'),
(27, 13, '2024-07-27'),
(28, 48, '2024-08-19'),
(29, 24, '2024-09-07'),
(30, 29, '2024-10-05'),
(31, 10, '2024-01-30'),
(32, 41, '2024-02-12'),
(33, 23, '2024-03-24'),
(34, 38, '2024-04-08'),
(35, 32, '2024-05-14'),
(36, 26, '2024-06-27'),
(37, 46, '2024-07-18'),
(38, 16, '2024-08-09'),
(39, 37, '2024-09-28'),
(40, 27, '2024-10-15'),
(41, 49, '2024-01-18'),
(42, 30, '2024-02-26'),
(43, 44, '2024-03-12'),
(44, 34, '2024-04-25'),
(45, 36, '2024-05-30'),
(46, 39, '2024-06-06'),
(47, 42, '2024-07-23'),
(48, 25, '2024-08-16'),
(49, 47, '2024-09-04'),
(50, 43, '2024-10-20'),
(51, 51, '2024-01-14'),
(52, 52, '2024-02-09'),
(53, 53, '2024-03-20'),
(54, 54, '2024-04-07'),
(55, 55, '2024-05-25'),
(56, 56, '2024-06-14'),
(57, 57, '2024-07-09'),
(58, 58, '2024-08-27'),
(59, 59, '2024-09-18'),
(60, 60, '2024-10-02');


INSERT INTO CHITIETHOADON (MaChiTietHoaDon, MaDonHang, MaBao, SoLuongBan, GiaBan) VALUES
(1, 5, 12, 2, 50000),
(2, 10, 8, 1, 45000),
(4, 2, 25, 2, 55000),
(5, 30, 17, 1, 70000),
(7, 12, 41, 2, 48000),
(9, 8, 9, 1, 75000),
(10, 25, 50, 4, 68000),
(12, 6, 27, 3, 63000),
(14, 14, 36, 2, 49000),
(15, 18, 55, 5, 66000),
(16, 35, 16, 3, 72000),
(19, 40, 5, 4, 69000),
(20, 3, 20, 2, 55000),
(22, 50, 6, 1, 45000),
(24, 31, 44, 2, 56000),
(25, 48, 13, 4, 67000),
(28, 42, 24, 2, 48000),
(29, 26, 46, 3, 61000),
(31, 34, 53, 2, 51000),
(33, 13, 10, 1, 57000),
(34, 44, 58, 3, 49000),
(36, 21, 35, 5, 72000),
(38, 9, 48, 3, 58000),
(39, 46, 4, 2, 69000),
(40, 1, 32, 4, 55000),
(43, 16, 52, 5, 64000),
(45, 39, 7, 4, 67000),
(46, 49, 60, 3, 52000),
(49, 36, 3, 3, 61000),
(50, 47, 54, 5, 73000),
(53, 37, 26, 1, 57000),
(55, 43, 30, 2, 66000),
(56, 45, 37, 5, 72000),
(58, 38, 59, 3, 58000),
(60, 41, 42, 4, 55000);


-- Liệt kê tất cả các khách hàng đã đặt báo
select distinct kh.MaKhachHang, kh.TenKhachHang, kh.DiaChi, kh.SoDienThoai, kh.Email
from KHACHHANG kh
inner join DONHANG dh on kh.MaKhachHang = dh.MaKhachHang
inner join CHITIETHOADON ct on dh.MaDonHang = ct.MaDonHang

-- Tìm danh sách các báo có đơn giá cao nhất
select * 
from BAO 
where DonGiaKy = (select MAX(DonGiaKy) from BAO)

-- Tính tổng doanh thu từ tất cả các đơn hàng
select SUM(ct.GiaBan * ct.SoLuongBan) as TongDoanhThu
from CHITIETHOADON ct

-- Liệt kê các đơn hàng của một khách hàng cụ thể (ví dụ: MaKhachHang = 3)
select  dh.MaDonHang, dh.MaKhachHang, dh.NgayDat, ct.MaBao, ct.SoLuongBan, ct.GiaBan
from DONHANG dh
inner join CHITIETHOADON ct on dh.MaDonHang = ct.MaDonHang
where dh.MaKhachHang = 3

-- Tìm khách hàng đã chi tiêu nhiều nhất cho việc đặt báo
select top 1 kh.MaKhachHang, kh.TenKhachHang, 
       SUM(ct.GiaBan * ct.SoLuongBan) AS TongChiTieu
from KHACHHANG kh
inner join DONHANG dh on kh.MaKhachHang = dh.MaKhachHang
inner join CHITIETHOADON ct on dh.MaDonHang = ct.MaDonHang
group by kh.MaKhachHang, kh.TenKhachHang
order by TongChiTieu desc

-------KHUNG NHÌN--------
-- View danh sách khách hàng và số đơn hàng họ đã đặt
go
create view v_DanhSachKhachHang as
select kh.MaKhachHang, kh.TenKhachHang, kh.DiaChi, kh.SoDienThoai, kh.Email, COUNT(dh.MaDonHang) as SoDonHang
from KHACHHANG kh
left join DONHANG dh on kh.MaKhachHang = dh.MaKhachHang
group by kh.MaKhachHang, kh.TenKhachHang, kh.DiaChi, kh.SoDienThoai, kh.Email
go
select * from v_DanhSachKhachHang

-- View báo giá đặt báo theo kỳ
go
create view v_BaoGiaDatBao as
select b.TenBao, b.DonGiaKy, tl.TenTheLoai
from BAO b
inner join THELOAIBAO tl on b.MaTheLoai = tl.MaTheLoai;
go
select * from v_BaoGiaDatBao

-- View danh sách báo và thể loại
go
create view v_DanhSachBao as
select b.MaBao, b.TenBao, b.HinhThuc, b.DonGiaKy, b.TonKho, tl.TenTheLoai
from BAO b
inner join THELOAIBAO tl on b.MaTheLoai = tl.MaTheLoai;
go
select * from v_DanhSachBao
-- View tổng doanh thu theo từng loại báo
go
create view v_DoanhThu_TheoBao as
select b.MaBao, b.TenBao, SUM(ct.SoLuongBan * ct.GiaBan) as TongDoanhThu
from BAO b
inner join CHITIETHOADON ct on b.MaBao = ct.MaBao
group by b.MaBao, b.TenBao
go
select * from v_DoanhThu_TheoBao
-- View hóa đơn chi tiết theo khách hàng
go
create view v_HoaDonChiTiet as
select dh.MaDonHang, kh.TenKhachHang, b.TenBao, ct.SoLuongBan, (ct.SoLuongBan * ct.GiaBan) AS ThanhTien
from DONHANG dh
inner join  KHACHHANG kh on dh.MaKhachHang = kh.MaKhachHang
inner join CHITIETHOADON ct on dh.MaDonHang = ct.MaDonHang
inner join  BAO b on ct.MaBao = b.MaBao;
go
select * from v_HoaDonChiTiet
-- View khách hàng không có số điện thoại
go
create view v_KhachHang_KhongCoSDT as
select MaKhachHang, TenKhachHang, DiaChi, Email
from KHACHHANG
where ISNULL(SoDienThoai, '') = '';
go
select * from v_HoaDonChiTiet
-- View đơn hàng trong 30 ngày gần nhất
go
create view v_DonHang_MoiNhat as
select dh.MaDonHang, kh.TenKhachHang, dh.NgayDat
from DONHANG dh
inner join KHACHHANG kh on dh.MaKhachHang = kh.MaKhachHang
where dh.NgayDat >= DATEADD(DAY, -30, GETDATE());
go
select * from v_DonHang_MoiNhat
insert into DONHANG (MaDonHang, MaKhachHang, NgayDat) values
(100, 5, '2025-03-07');
-- View danh sách báo có giá cao nhất
go
create view v_Bao_GiaCaoNhat as
select MaBao, TenBao, DonGiaKy
from BAO
where DonGiaKy = (select MAX(DonGiaKy) from BAO);
go
select * from v_Bao_GiaCaoNhat
-- View tổng số lượng báo đã bán theo khách hàng
go
create view v_TongSoLuongBan_KhachHang as
select kh.MaKhachHang, kh.TenKhachHang, SUM(ct.SoLuongBan) as TongSoLuong
from KHACHHANG kh
inner join DONHANG dh on kh.MaKhachHang = dh.MaKhachHang
inner join  CHITIETHOADON ct on dh.MaDonHang = ct.MaDonHang
group by kh.MaKhachHang, kh.TenKhachHang;
go
select * from v_TongSoLuongBan_KhachHang

-- Chỉ mục trên MaKhachHang trong KHACHHANG
-- Giúp tìm kiếm khách hàng nhanh hơn
create index IX_KHACHHANG_MaKhachHang
on KHACHHANG(MaKhachHang)

-- Chỉ mục trên MaDonHang trong CHITIETHOADON
-- Tối ưu khi truy vấn chi tiết hóa đơn theo đơn hàng
create index IX_CHITIETHOADON_MaDonHang
ON CHITIETHOADON(MaDonHang)

-- Chỉ mục trên MaKhachHang trong bảng DONHANG + NgayDat
-- Tăng tốc truy vấn lấy đơn hàng gần nhất của một khách hàng
create index IX_DONHANG_MaKhachHang_NgayDat
on DONHANG(MaKhachHang, NgayDat)

-- Chỉ mục trên MaBao + DonGiaKy trong bảng BAO
-- Hữu ích khi tìm báo có giá cao nhất/thấp nhất
create index IX_BAO_MaBao_DonGiaKy
on BAO(MaBao, DonGiaKy)

-- Chỉ mục trên TenKhachHang trong KHACHHANG
-- Hỗ trợ tìm kiếm khách hàng theo tên nhanh hơn
create index IX_KHACHHANG_TenKhachHang
on KHACHHANG(TenKhachHang)

-- Chỉ mục trên TenBao trong BAO
-- Giúp tìm kiếm báo theo tên nhanh hơn
create index IX_BAO_TenBao
on BAO(TenBao)

-- Chỉ mục trên MaHoaDon trong CHITIETHOADON
-- Hữu ích khi lấy thông tin hóa đơn theo hóa đơn
create index IX_CHITIETHOADON_MaKhachHang
on CHITIETHOADON(MaDonHang)

-- Chỉ mục trên MaTheLoai trong THELOAIBAO
-- Tăng tốc truy vấn nhóm báo theo thể loại
create index IX_THELOAIBAO_MaTheLoai
on THELOAIBAO(MaTheLoai)


-- Thêm khách hàng mới (Kiểm tra trùng lặp trước khi thêm)
go
create proc sp_ThemKhachHang
    @MaKhachHang int,
    @TenKhachHang nvarchar(100),
    @DiaChi nvarchar(225),
    @SoDienThoai nvarchar(15),
    @Email nvarchar(100)
as
begin
    if  not exists(select 1 from KHACHHANG where MaKhachHang = @MaKhachHang)
    begin
        insert into KHACHHANG (MaKhachHang, TenKhachHang, DiaChi, SoDienThoai, Email)
        values (@MaKhachHang, @TenKhachHang, @DiaChi, @SoDienThoai, @Email)
    end
    else
    begin
        print 'Khách hàng đã tồn tại!'
    end
end

-- Xóa báo theo ID (Kiểm tra ràng buộc trước khi xóa)
go
create proc sp_XoaBao
    @MaBao int
as
begin
    if not exists(select 1 from CHITIETHOADON where MaBao = @MaBao)
    begin
        delete from BAO where MaBao = @MaBao
    end
    else
    begin
        print 'Không thể xóa báo do có đơn hàng liên quan!'
    end
end

-- Thêm thể loại báo
go
create proc sp_ThemTheLoaiBao
    @MaTheLoai int,
    @TenTheLoai nvarchar(100)
as
begin
    if not exists (select 1 from THELOAIBAO where MaTheLoai = @MaTheLoai)
    begin
        insert into THELOAIBAO (MaTheLoai, TenTheLoai)
        values (@MaTheLoai, @TenTheLoai)
    end
    else
    begin
        print 'Thể loại đã tồn tại!';
    end
end

-- Thêm báo mới
go
create proc sp_ThemBao
    @MaBao int,
    @TenBao nvarchar(100),
    @HinhThuc nvarchar(100),
    @DonGiaKy decimal(10,2),
    @MaTheLoai int
as
begin
    if exists (select 1 from THELOAIBAO where MaTheLoai = @MaTheLoai)
    begin
        insert into  BAO (MaBao, TenBao, HinhThuc, DonGiaKy, MaTheLoai)
        values (@MaBao, @TenBao, @HinhThuc, @DonGiaKy, @MaTheLoai)
    end
    else
    begin
        print 'Thể loại báo không tồn tại!'
    end
end

-- Thêm đơn hàng
go
create proc sp_ThemDonHang
    @MaDonHang int,
    @MaKhachHang int,
    @NgayDat datetime
as
begin
    if exists(select 1 from KHACHHANG where MaKhachHang = @MaKhachHang)
    begin
        insert into DONHANG (MaDonHang, MaKhachHang, NgayDat)
        values (@MaDonHang, @MaKhachHang, @NgayDat)
    end
    else
    begin
        print 'Khách hàng không tồn tại!'
    end
end

-- Thêm chi tiết hóa đơn
go
create proc sp_ThemChiTietHoaDon
    @MaChiTietHoaDon int,
    @MaDonHang int,
    @MaBao int,
    @SoLuongBan int
as
begin
    if exists(select 1 from DONHANG where MaDonHang = @MaDonHang) and
       exists (select 1 from BAO where MaBao = @MaBao)
    begin
        insert into  CHITIETHOADON (MaChiTietHoaDon, MaDonHang, MaBao, SoLuongBan)
        values (@MaChiTietHoaDon, @MaDonHang, @MaBao, @SoLuongBan)
    end
    else
    begin
        print 'Đơn hàng hoặc báo không tồn tại!'
	end
end

-- Cập nhật giá báo
go
create proc sp_CapNhatGiaBao
    @MaBao int,
    @DonGiaKy decimal(10,2)
as
begin
    update BAO set DonGiaKy = @DonGiaKy where MaBao = @MaBao
end

-- Xóa khách hàng (nếu không có đơn hàng liên quan)
go
create proc sp_XoaKhachHang
    @MaKhachHang int
as
begin
    if not exists(select 1 from DONHANG where MaKhachHang = @MaKhachHang)
   begin
        delete from KHACHHANG where MaKhachHang = @MaKhachHang
    end
    else
    begin
        print 'Không thể xóa khách hàng do có đơn hàng liên quan!'
    end
end

-- Lấy danh sách đơn hàng của khách hàng
go
create proc sp_LayDonHangCuaKhachHang
    @MaKhachHang int
as
begin
    select dh.MaDonHang, dh.NgayDat, kh.MaKhachHang, kh.TenKhachHang, kh.SoDienThoai
    from KHACHHANG kh
    inner join DONHANG dh on dh.MaKhachHang = kh.MaKhachHang
    where kh.MaKhachHang = @MaKhachHang
end

-- Tính tổng doanh thu theo khoảng thời gian
go
create proc sp_TinhDoanhThuTheoThoiGian
    @TuNgay datetime,
    @DenNgay datetime
as
begin
    select SUM(b.DonGiaKy * ct.SoLuongBan) as TongDoanhThu, COUNT(*) as SoLuongDon
    from DONHANG dh
    inner join CHITIETHOADON ct on dh.MaDonHang = ct.MaDonHang
    inner join BAO b on ct.MaBao = b.MaBao
    where dh.NgayDat between @TuNgay and @DenNgay
end

-- Tìm khách hàng chi tiêu nhiều nhất
go
create proc sp_TimKhachHangChiTieuNhieuNhat
as
begin
    select top 1 kh.MaKhachHang, kh.TenKhachHang, SUM(b.DonGiaKy * ct.SoLuongBan) as TongChiTieu
    from KHACHHANG kh
    inner join DONHANG dh on kh.MaKhachHang = dh.MaKhachHang
    inner join CHITIETHOADON ct on dh.MaDonHang = ct.MaDonHang
    inner join BAO b on ct.MaBao = b.MaBao
    group by kh.MaKhachHang, kh.TenKhachHang
    order by TongChiTieu desc
end
--------FUNCTION----------
---Trả về tổng số báo có trong kho (Scalar Function)
go
create function dbo.fn_TongSoBaoTonKho()
returns int
as
begin
	declare @TongSo int
	select @TongSo = SUM(TonKho) from BAO
	return isnull(@TongSo, 0)
end
go
select dbo.fn_TongSoBaoTonKho() as TongSoBaoTonKho
go

---Trả về tên thể loại báo theo mã (Scalar Function)
create function dbo.fn_TenTheLoai(@MaTheLoai int)
returns nvarchar(100)
as
begin
	declare @Ten nvarchar(100)
	select @Ten = TenTheLoai from THELOAIBAO where MaTheLoai = @MaTheLoai
	return @Ten
end
go
select dbo.fn_TenTheLoai(2) as TenTheLoai
go


--- Trả về tổng số đơn hàng của một khách hàng (Scalar Function)
go
create function dbo.fn_TongSoDonHang(@MaKhachHang int)
returns int
as
begin
    declare @Tong int
    select @Tong = COUNT(*) from DONHANG where MaKhachHang = @MaKhachHang
    return @Tong
end
go
select dbo.fn_TongSoDonHang(10) as TongSoDonHang
go
---Trả về danh sách báo thuộc một thể loại (Table-Valued Function)
go
create function dbo.fn_BaoTheoTheLoai(@MaTL int)
returns table
as
return(select MaBao, TenBao, DonGiaKy, TonKho
		from BAO
		where MaTheLoai = @MaTL)
go
select  * from dbo.fn_BaoTheoTheLoai(10) 
go
--- Trả về danh sách đơn hàng của một khách hàng (Table-Valued Function)
go
create function dbo.fn_DonHangCuaKhac(@MaKhachHang int)
returns table
as
return(
	select MaDonHang, NgayDat
	from DONHANG
	where MaDonHang = @MaKhachHang
)
go
select * from dbo.fn_DonHangCuaKhac(10)
go


---- Trả về tổng doanh thu của một báo cụ thể (Scalar Function)
go
create function dbo.fn_DoanhThuBao(@MaBao int)
returns decimal(10,2)
as
begin
	declare @DoanhThu decimal(10, 2)
	select @DoanhThu = SUM(SoLuongBan * GiaBan)
	from CHITIETHOADON
	where MaBao = @MaBao
	return @DoanhThu
end
go
select  dbo.fn_DoanhThuBao(20) as N'Doanh Thu'
select * from BAO
go
---- Trả về danh sách khách hàng đã mua hàng (Table-Valued Function)
go
create function dbo.fn_KhachHangMuaHang()
returns table
as
return
(	select distinct kh.MaKhachHang, kh.TenKhachHang, kh.DiaChi, kh.SoDienThoai, kh.Email from KHACHHANG kh
	inner join DONHANG dh on kh.MaKhachHang = dh.MaKhachHang
)
go
select * from dbo.fn_KhachHangMuaHang()
go

--- Trả về số lượng báo bán được theo từng thể loại (Table-Valued Function)
go 
create function dbo.fn_SoLuongBaoBanTheoTheLoai()
returns table
as
return (
    select  tl.MaTheLoai, tl.TenTheLoai, SUM(ct.SoLuongBan) as TongSoLuongBan
    from THELOAIBAO tl
    inner join BAO b on tl.MaTheLoai = b.MaTheLoai
    inner join CHITIETHOADON ct on B.MaBao = ct.MaBao
    group by tl.MaTheLoai, tl.TenTheLoai
)
go
select * from dbo.fn_SoLuongBaoBanTheoTheLoai()
go
---Trả về số lượng đơn hàng của một khách hàng dưới dạng biến bảng
go
create function dbo.fn_DonHangCuaKhach_BienBang(@MaKhachHang int)
returns @TableDonHang table
(
    MaDonHang int,
    NgayDat datetime
)
as
begin
    insert into @TableDonHang
    select MaDonHang, NgayDat from DONHANG where MaKhachHang = @MaKhachHang
    return
end
go
select * from dbo.fn_DonHangCuaKhach_BienBang(11)
go
--- Trả về danh sách báo có số lượng tồn kho dưới mức quy định (Scalar Function)
go
create function dbo.fn_BaoTonKhoThap(@MucTonKho int)
returns table
as
return 
(
    select MaBao, TenBao, TonKho
    from BAO
    where TonKho < @MucTonKho
)
go
select *from dbo.fn_BaoTonKhoThap(180)
go


----TRIGGER-------
-- Thêm cột trạng thái vào DONHANG nếu chưa có
alter table DONHANG add TinhTrangDonHang nvarchar(100) not null default N'Chờ xử lý'

-- Tạo bảng LOG_DONHANG để lưu lịch sử thay đổi trạng thái đơn hàng
create table LOG_DONHANG (
    LogID int identity(1,1) primary key,
    MaDonHang int,
    TinhTrangCu nvarchar(100),
    TinhTrangMoi nvarchar(100),
    NgayThayDoi datetime default GETDATE(),
    NguoiCapNhat nvarchar(100) default SUSER_NAME()
)

-- Trigger ghi log khi cập nhật trạng thái đơn hàng
go
create trigger trg_Log_CapNhatTinhTrangDonHang
on DONHANG
after update
as
begin
    insert into LOG_DONHANG (MaDonHang, TinhTrangCu, TinhTrangMoi, NgayThayDoi, NguoiCapNhat)
    select 
        i.MaDonHang, 
        d.TinhTrangDonHang as TinhTrangCu,
        i.TinhTrangDonHang as TinhTrangMoi,
        GETDATE(), 
        SUSER_NAME()
    from inserted i
    inner join deleted d on i.MaDonHang = d.MaDonHang
    where i.TinhTrangDonHang <> d.TinhTrangDonHang
end


update DONHANG set TinhTrangDonHang = N'Đang Giao' where MaDonHang = 10
update DONHANG set TinhTrangDonHang = N'Đã Hủy' where MaDonHang = 12

select * from LOG_DONHANG
select * from DONHANG


-- Tạo bảng LOG_HUYDON để lưu thông tin đơn hàng bị hủy
create table LOG_HUYDON (
    LogID int identity(1,1) primary key,
    MaDonHang int,
    MaKhachHang int,
    TenKhachHang nvarchar(100),
    SoDienThoai nvarchar(15),
    Email nvarchar(100),
    NgayHuy datetime default GETDATE(),
    NguoiHuy nvarchar(100) default SUSER_NAME()
)

-- Trigger ngăn không cho hủy đơn nếu đơn hàng đang giao, nếu hợp lệ thì ghi log
go
create trigger trg_Log_HuyDonHang
on DONHANG
after update
as
begin
    -- Ngăn chặn hủy đơn hàng nếu đơn đang giao
    if exists (
        select 1 from inserted i
        inner join deleted d on d.MaDonHang = i.MaDonHang
        WHERE d.TinhTrangDonHang = N'Đang Giao'
        and i.TinhTrangDonHang = N'Đã Hủy'
    )
    begin
        print N'Không thể hủy đơn vì đơn đang được giao!'
        rollback transaction
        return
    end

    -- Nếu đơn bị hủy, lưu vào bảng LOG_HUYDON
    if update(TinhTrangDonHang)
    begin
        insert into LOG_HUYDON (MaDonHang, MaKhachHang, TenKhachHang, SoDienThoai, Email, NgayHuy, NguoiHuy)
        select 
            i.MaDonHang,
            kh.MaKhachHang,
            kh.TenKhachHang,
            kh.SoDienThoai,
            kh.Email,
            GETDATE(),
            SUSER_NAME()
        from inserted i
        inner join deleted d on i.MaDonHang = d.MaDonHang
        inner join KHACHHANG kh on i.MaKhachHang = kh.MaKhachHang
        where i.TinhTrangDonHang = N'Đã Hủy'
        and i.TinhTrangDonHang <> d.TinhTrangDonHang
    end
end
update DONHANG set TinhTrangDonHang = N'Đã Hủy' where MaDonHang = 20
update DONHANG set TinhTrangDonHang = N'Đẫ Giao' where MaDonHang = 19

select *from LOG_HUYDON
select *from DONHANG


-- Tạo bảng LOG_THEMKHACHHANG để lưu thông tin khách hàng mới
create table LOG_THEMKHACHHANG (
    LogID int identity(1,1) primary key,
    MaKhachHang int,
    TenKhachHang nvarchar(100),
    DiaChi nvarchar(225),
    SoDienThoai nvarchar(15),
    Email nvarchar(100),
    NgayTao datetime default GETDATE(),
    NguoiTao nvarchar(100) default SUSER_NAME()
)

-- Trigger ghi log khi thêm khách hàng mới
go
create trigger trg_Log_ThemKhachHang
on KHACHHANG
after insert
as
begin
    insert into LOG_THEMKHACHHANG (MaKhachHang, TenKhachHang, DiaChi, SoDienThoai, Email, NgayTao, NguoiTao)
    select 
        MaKhachHang, 
        TenKhachHang, 
        DiaChi, 
        SoDienThoai, 
        Email, 
        GETDATE(), 
        SUSER_NAME()
    from inserted;
end


insert into KHACHHANG (MaKhachHang, TenKhachHang, DiaChi, SoDienThoai, Email)
values (200, N'Nguyễn Văn A', N'Hà Nội', '0987654321', 'nguyenvana@example.com')

select *from LOG_THEMKHACHHANG


-- Trigger cập nhật trạng thái đơn hàng khi thêm chi tiết hóa đơn
go
create trigger trg_CapNhatTinhTrangDonHang_ChiTiet
on CHITIETHOADON
after insert
as
begin
    update DONHANG
    set TinhTrangDonHang = N'Đang xử lý'
    where MaDonHang in (select MaDonHang from inserted)
end

insert into CHITIETHOADON (MaChiTietHoaDon, MaDonHang, MaBao, GiaBan, SoLuongBan)
values (102, 60, 11, 20000, 5);

select TinhTrangDonHang from DONHANG where MaDonHang = 60

-- Tạo bảng LOG_GIABAO để lưu lịch sử cập nhật giá báo
create table LOG_GIABAO (
    LogID int identity(1,1) ,
    MaBao int,
    GiaCu decimal(10,2),
    GiaMoi Decimal(10,2),
    NgayCapNhat datetime default GETDATE(),
    NguoiCapNhat nvarchar(100) default SUSER_NAME()
)

-- Trigger ghi log khi giá báo thay đổi
go
 create trigger trg_Log_CapNhatGiaBao
on BAO
after update  
as
begin
    insert into LOG_GIABAO (MaBao, GiaCu, GiaMoi, NgayCapNhat, NguoiCapNhat)
    select 
        d.MaBao, 
        d.DonGiaKy as GiaCu, 
        i.DonGiaKy as GiaMoi, 
        GETDATE(), 
        SUSER_NAME()
    from inserted i
    inner join deleted d on i.MaBao = d.MaBao
    where i.DonGiaKy <> d.DonGiaKy;
end

update BAO set DonGiaKy = 120000 where MaBao = 11
select *from LOG_GIABAO


-- Tạo bảng ThongKeBao nếu chưa có

create table ThongKeBao (
    MaDonHang int primary key,
    TongSoBao int
)

declare @MaDonHang int
declare @TongSoBao int

declare cur cursor for 
select MaDonHang, SUM(SoLuongBan) 
from CHITIETHOADON 
group by MaDonHang

open cur;
 fetch next from cur into @MaDonHang, @TongSoBao

while @@FETCH_STATUS = 0
begin
    if exists (select 1 from ThongKeBao where MaDonHang = @MaDonHang)
    begin
        update ThongKeBao
        set TongSoBao = @TongSoBao
        where MaDonHang = @MaDonHang
    end
    else
    begin
        insert into ThongKeBao (MaDonHang, TongSoBao)
        values (@MaDonHang, @TongSoBao)
    end

    fetch next from cur into @MaDonHang, @TongSoBao
end

close cur;
deallocate cur;
select *from ThongKeBao





backup database QLDB to disk = 'C:\Backup\RightsFULL.bak'

backup database QLDB to disk = 'C:\Backup\RightsDiff.bak' with differential

backup database QLDB to disk = 'C:\Backup\RightsTran.trn' with noformat , noinit


go
use master
go
create login Right_backup 
	with password = N'Right_backup',
	check_expiration = off,
	check_policy = off
go


go 
use QLDB
go
create user Right_backup 
	for login Right_backup
go




go
use master
go

create login Truong_user
	with password = N'Truong_user',
	check_policy = off, check_expiration = off,
	default_database = QLDB
go

go
use QLDB
go

create user Truong_user
	for login Truong_user
go

use QLDB
go
grant select, insert , delete
on KHACHHANG to Truong_user
go

