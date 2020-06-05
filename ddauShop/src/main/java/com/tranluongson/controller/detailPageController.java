package com.tranluongson.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.tranluongson.entity.SanPham;
import com.tranluongson.service.SanPhamService;

@Controller
@RequestMapping("/detail")

public class detailPageController {
	
	@Autowired
	SanPhamService sanphamservice;

	@GetMapping("/{masanpham}")
	public String Detail( @PathVariable int masanpham , ModelMap map) {
	SanPham SanPhamTheoMa=sanphamservice.LayDanhSachSanPhamTheoMa(masanpham);
	map.addAttribute("SanPhamTheoMa", SanPhamTheoMa);
		return "detail";
	
	} 

} 	
