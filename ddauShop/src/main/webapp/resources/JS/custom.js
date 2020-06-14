$(document).ready(function() {

	$("#btLogin ").click(function() {

		var user = $("#login-box").val();
		var pass = $("#login2-box").val();
		$.ajax({

			url : "/ddauShop/api/CheckLogin",
			type : "GET",
			data : {
				tendangnhap : user,
				matkhau : pass,

			},
			success : function(value) {
				if (value == "true") {
					LinkNow = window.location.href;
					Link = LinkNow.replace("/login", "");
					window.location = Link
				} else {
					$("#kiemtradangnhap").append("Đăng nhập thất bại")
					e.stopImmediatePropagation();
				}
			}
		})

	});
	
	$(".btn-giohang ").click(function() {

		var mamau = $(this).closest("tr").find(".mau").attr("data-mamau");
		var tenmau = $(this).closest("tr").find(".mau").text();
		var masize = $(this).closest("tr").find(".size").attr("data-masize");
		var tensize = $(this).closest("tr").find(".size").text();
		var masanpham = $("#tensanpham").attr("data-masanpham");
		var tensanpham = $("#tensanpham").text();
		var giatien = $("#giatien").text();
		var soluong = $(this).closest("tr").find(".soluong").attr("data-soluong");
		alert(giatien)
		$.ajax({
			url : "http://localhost:8080/ddauShop/api/ThemGioHang",
			type : "GET",
			data : {
				masanpham : masanpham,
				masize : masize,
				mamau : mamau,
				soluong : soluong,
				tensanpham : tensanpham,
				giatien : giatien,
				tenmau : tenmau,
				tensize : tensize,
			},
			success : function(value){}
		})

	});

	

	$("#login ").click(function() {
		$(this).addClass("active");
		$("#register").removeClass("active");
		$("#container-center-login-right").show();
		$("#container-center-register-right").hide();
	});

	$("#register ").click(function() {
		$(this).addClass("active");
		$("#login").removeClass("active");
		$("#container-center-register-right").show();
		$("#container-center-login-right").hide();
	});

})