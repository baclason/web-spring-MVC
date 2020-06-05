package com.tranluongson.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.tranluongson.DAO.NhanVienDAO;
import com.tranluongson.entity.NhanVien;
import com.tranluongson.imp.NhanVienImp;


@Service
public class NhanVienService implements NhanVienImp {
	
	@Autowired
	NhanVienDAO nhanviendao;
	public boolean CheckLogin(String tendangnhap, String matkhau) {
		boolean Check=nhanviendao.CheckLogin(tendangnhap, matkhau);
		return Check;	
	}
	public boolean register(NhanVien nhanVien) {
		boolean CheckRegister = nhanviendao.register(nhanVien);
		System.out.println(CheckRegister);
		return CheckRegister;
	}
	

	
}
