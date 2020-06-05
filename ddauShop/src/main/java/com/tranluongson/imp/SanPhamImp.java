package com.tranluongson.imp;

import java.util.List;
import com.tranluongson.entity.SanPham;

public interface SanPhamImp {
	List<SanPham> LayDanhSachSanPhamLimit(int SPBatDau );
	SanPham LayDanhSachSanPhamTheoMa(int masanpham);
}
