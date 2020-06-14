package com.tranluongson.controller;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tranluongson.entity.NhanVien;
import com.tranluongson.service.NhanVienService;

@Controller
@RequestMapping("/login")
public class loginController {
	@Autowired
	NhanVienService nhanvienservice;

	@GetMapping
	public String loginPage() {
		return "login";
	}

	@PostMapping
	public String register(@RequestParam String tendangky, @RequestParam String matkhaudangky,
			@RequestParam String matkhauxacnhandangky, ModelMap map) {
		boolean checkMail = validate(tendangky);
		if (checkMail) {
			if (matkhaudangky.equals(matkhauxacnhandangky)) {
				NhanVien nhanVien = new NhanVien();
				nhanVien.setEmail(tendangky);
				nhanVien.setTendangnhap(tendangky);
				nhanVien.setMatkhau(matkhaudangky);
				nhanvienservice.register(nhanVien);
			} else {
			map.addAttribute("kiemtradangnhap", "Mật khẩu xác nhận không trùng khớp");
			return "login";
			}

		} else {
			map.addAttribute("kiemtradangnhap", "Email sai, hãy nhập lại");
			return "login";
		}

		return "login";
	}

	public static final Pattern VALID_EMAIL_ADDRESS_REGEX = Pattern.compile("^[A-Z0-9._%+-]+@[A-Z0-9.-]+\\.[A-Z]{2,6}$",
			Pattern.CASE_INSENSITIVE);

	public static boolean validate(String emailStr) {
		Matcher matcher = VALID_EMAIL_ADDRESS_REGEX.matcher(emailStr);
		return matcher.find();
	}

}
