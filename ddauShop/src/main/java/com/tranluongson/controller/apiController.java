package com.tranluongson.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.tranluongson.service.NhanVienService;

@Controller
@SessionAttributes("user")
@RequestMapping("api/")
public class apiController {
	@Autowired
	NhanVienService nhanvienservice;

	@GetMapping("CheckLogin")
	@ResponseBody
	public String CheckLogin(@RequestParam String tendangnhap, @RequestParam String matkhau, ModelMap map) {
		boolean kiemtra = nhanvienservice.CheckLogin(tendangnhap, matkhau);
		if(kiemtra==true) {
			map.addAttribute("user", tendangnhap);
			return "" + kiemtra;
		}
		else return "" + kiemtra;
		
	}
}
