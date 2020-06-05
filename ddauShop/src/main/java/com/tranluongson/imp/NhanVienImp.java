package com.tranluongson.imp;

import com.tranluongson.entity.NhanVien;

public interface NhanVienImp {
	boolean CheckLogin(String tendangnhap, String matkhau);
	boolean register(NhanVien nhanVien);
}
