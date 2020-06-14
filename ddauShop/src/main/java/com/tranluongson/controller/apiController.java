package com.tranluongson.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.tranluongson.entity.GioHang;
import com.tranluongson.service.NhanVienService;

@Controller
@SessionAttributes({ "user", "giohang" })
@RequestMapping("api/")
public class apiController {
	@Autowired
	NhanVienService nhanvienservice;
	List<GioHang> giohangs = new ArrayList<>();

	@GetMapping("CheckLogin")
	@ResponseBody
	public String CheckLogin(@RequestParam String tendangnhap, @RequestParam String matkhau, ModelMap map) {
		boolean kiemtra = nhanvienservice.CheckLogin(tendangnhap, matkhau);
		if (kiemtra == true) {
			map.addAttribute("user", tendangnhap);
			return "" + kiemtra;
		} else
			return "" + kiemtra;

	}

	@GetMapping("ThemGioHang")
	public void ThemGioHang(@RequestParam int masanpham, @RequestParam int masize, @RequestParam int mamau,
			@RequestParam int soluong, @RequestParam String tensanpham, @RequestParam String giatien,
			@RequestParam String tenmau, @RequestParam String tensize, HttpSession httpSession) {
		GioHang giohang = new GioHang();
		giohang.setGiatien(giatien);
		giohang.setMamau(mamau);
		giohang.setMasanpham(masanpham);
		giohang.setMasize(masize);
		giohang.setSoluong(soluong);
		giohang.setTenmau(tenmau);
		giohang.setTensanpham(tensanpham);
		giohang.setTensize(tensize);
		giohangs.add(giohang);
		httpSession.setAttribute("giohang", giohangs);
		List<GioHang> list = (List<GioHang>) httpSession.getAttribute("giohang");
	}
}
