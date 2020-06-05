package com.tranluongson.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tranluongson.entity.SanPham;
import com.tranluongson.service.SanPhamService;

@Controller
@RequestMapping("/")
public class homePageController {
	@Autowired
	SanPhamService sanphamservice;

	@GetMapping
	
	public String homepage(ModelMap map, HttpSession httpSession) {
		try {
			String user = (String) httpSession.getAttribute("user");
			String FistText = user.substring(0, 1);
			map.addAttribute("FistText", FistText);
			List<SanPham> DanhSachSanPham = sanphamservice.LayDanhSachSanPhamLimit(0);
			map.addAttribute("listsanpham", DanhSachSanPham);
			return "homepage";

		} catch (Exception e) {
			List<SanPham> DanhSachSanPham = sanphamservice.LayDanhSachSanPhamLimit(0);
			map.addAttribute("listsanpham", DanhSachSanPham);
			return "homepage";

		}
	}

}
