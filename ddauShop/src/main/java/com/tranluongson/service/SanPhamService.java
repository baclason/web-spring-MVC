package com.tranluongson.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.tranluongson.DAO.SanPhamDAO;
import com.tranluongson.entity.SanPham;
import com.tranluongson.imp.SanPhamImp;

@Service
public class SanPhamService implements SanPhamImp{
	@Autowired
	SanPhamDAO sanphamdao;

	public List<SanPham> LayDanhSachSanPhamLimit(int SPBatDau) {
		
		return sanphamdao.LayDanhSachSanPhamLimit(SPBatDau);
	}
	

	public SanPham LayDanhSachSanPhamTheoMa(int masanpham) {
		
		return sanphamdao.LayDanhSachSanPhamTheoMa(masanpham);
	}




}
