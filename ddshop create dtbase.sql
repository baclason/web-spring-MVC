
create table CHUCVU(
machucvu integer auto_increment,
tenchucvu varchar(20),
primary key (maChucVu)
);

create table NHANVIEN(
manhanvien integer auto_increment,
tennhanvien varchar(30),
diachi varchar(200),
gioitinh bit,
cmnd char(14),
machucvu integer,
email varchar(80),
tendangnhap varchar(50),
matkhau varchar(50),
primary key (manhanvien),
CONSTRAINT FK_nhanvien_chucvu FOREIGN KEY (machucvu)
    REFERENCES CHUCVU(machucvu)

);
create table DANHMUCSANPHAM(
madanhmuc integer auto_increment,
tendanhmuc varchar(200),
hinhdanhmuc text,
primary key (madanhmuc)
);

create table SANPHAM(
masanpham integer auto_increment,
madanhmuc integer,
tensanpham varchar(200),
giatien varchar(50),
mota text,
hinhsanpham text,
primary key (masanpham),
CONSTRAINT FK_sanpham_danhmucsanpham FOREIGN KEY (madanhmuc)
    REFERENCES DANHMUCSANPHAM(madanhmuc)

);
create table MAUSANPHAM(
mamau integer auto_increment,
tenmau varchar(50),
primary key(mamau)
);  
create table SIZESANPHAM(
masize integer auto_increment,
size varchar(50),
primary key (masize)
);
create table CHITIETSANPHAM(
machitietsanpham integer auto_increment,
masanpham integer,
masize integer,
mamau integer,
soluong integer,
ngaynhap varchar(50),
primary key (machitietsanpham),
CONSTRAINT FK_chitietsanpham_sanpham FOREIGN KEY (masanpham)
    REFERENCES SANPHAM(masanpham),
CONSTRAINT FK_chitietsanpham_mausanpham FOREIGN KEY (mamau)
    REFERENCES MAUSANPHAM(mamau),
CONSTRAINT FK_chitietsanpham_sizesanpham FOREIGN KEY (masize)
    REFERENCES SIZESANPHAM(masize)

);
create table KHUYENMAI(
makhuyenmai integer auto_increment,
tenkhuyenmai varchar(200),
thoigianbatdau varchar(50),
thoigianketthuc varchar(50),
mota text,
giagiam varchar(100),
hinhkhuyenmai text,
primary key(makhuyenmai)

);

create table CHITIETKHUYENMAI(
makhuyenmai integer,
masanpham integer,
primary key (makhuyenmai,masanpham),
CONSTRAINT FK_chitietkhuyenmai_chitietsanpham FOREIGN KEY (masanpham)
    REFERENCES CHITIETSANPHAM(masanpham)
);
create table HOADON(
mahoadon integer auto_increment,
tenkhachhang varchar(50),
sodienthoai char(20),
diachigiaohang varchar(200),
tinhtrang bit,
ngaylap varchar(30),
primary key (mahoadon)

);

create table CHITIETHOADON(
mahoadon integer,
machitietsanpham integer,
soluong integer,
giatien varchar(50),
primary key (mahoadon,machitietsanpham),
CONSTRAINT FK_chitiethoadon_hoadon FOREIGN KEY (mahoadon)
    REFERENCES HOADON(mahoadon),    
CONSTRAINT FK_chitiethoadon_chitietsanpham FOREIGN KEY (machitietsanpham)
    REFERENCES CHITIETSANPHAM(machitietsanpham)
);