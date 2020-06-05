package com.tranluongson.DAO;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.tranluongson.entity.NhanVien;
import com.tranluongson.imp.NhanVienImp;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class NhanVienDAO implements NhanVienImp {
	@Autowired
	SessionFactory sessionFactory;

	@Transactional
	public boolean CheckLogin(String tendangnhap, String matkhau) {
		Session session = sessionFactory.getCurrentSession();
		try {
			NhanVien nhanvien = (NhanVien) session
					.createQuery("from nhanvien WHERE tendangnhap='" + tendangnhap + "' AND matkhau='" + matkhau + "'")
					.getSingleResult();
			if (nhanvien != null) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			return false;
		}
	}

	@Transactional
	public boolean register(NhanVien nhanVien) {
		Session session = sessionFactory.getCurrentSession();
		int manhanvien = (Integer) session.save(nhanVien);
		System.out.println(manhanvien);
		return false;
	}

}
