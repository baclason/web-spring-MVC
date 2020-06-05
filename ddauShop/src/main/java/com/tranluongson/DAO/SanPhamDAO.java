package com.tranluongson.DAO;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import com.tranluongson.entity.SanPham;
import com.tranluongson.imp.SanPhamImp;

@Repository
@Scope(proxyMode = ScopedProxyMode.TARGET_CLASS)
public class SanPhamDAO implements SanPhamImp {

	@Autowired
	SessionFactory sessionFactory;

	@SuppressWarnings("unchecked")
	@Transactional
	public List<SanPham> LayDanhSachSanPhamLimit(int SPBatDau) {
		Session session = sessionFactory.getCurrentSession();
		List<SanPham> ListSanPham = (List<SanPham>) session.createQuery("from sanpham").setFirstResult(SPBatDau)
				.setMaxResults(20).getResultList();
		return ListSanPham;
	}
	@Transactional
	public SanPham LayDanhSachSanPhamTheoMa(int masanpham) {
		Session session = sessionFactory.getCurrentSession();
		String query = "from sanpham sp where sp.masanpham=" + masanpham;
		SanPham SanPhamTheoMa =(SanPham) session.createQuery( query).getSingleResult();
		return SanPhamTheoMa;
	}
}
