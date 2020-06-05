package com.tranluongson.entity;

import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

@Entity(name="chitiethoadon")
public class ChiTietHoaDon {
	@EmbeddedId
	ChiTietHoaDonId chitiethoadonid;
	
	int soluong;
	String giatien;

}
