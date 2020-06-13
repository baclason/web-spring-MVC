$(document).ready(function() {

	$("#btLogin ").click(function() {

		var user = $("#login-box").val();
		var pass = $("#login2-box").val();
		$.ajax({

			url : "http://localhost:8080/ddauShop/api/CheckLogin",
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
					alert("efrdsf")
					e.stopImmediatePropagation();
				}
			}
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

	$("#btn-success ").click(function() {

		var mamau = $(this).closest("tr").find("mamau").attr("data-mamau");
		var tenmau=$(this).closest("tr").find("tenmau").text();
//		$.ajax({
//
//			url : "http://localhost:8080/ddauShop/api/CheckLogin",
//			type : "GET",
//			data : {
//				tendangnhap : user,
//				matkhau : pass,
//
//			},
//			success : function(value) {
//				if (value == "true") {
//					LinkNow = window.location.href;
//					Link = LinkNow.replace("/login", "");
//					window.location = Link
//				} else {
//					$("#kiemtradangnhap").append("Đăng nhập thất bại")
//					alert("efrdsf")
//					e.stopImmediatePropagation();
//				}
//			}
//		})

	});

})