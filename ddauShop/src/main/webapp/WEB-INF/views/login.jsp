<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="header.jsp" />
</head>
<body id="body-login">
	<div id="body-flex-login">
		<div id="container-login">
			<div id=container-login-left>
				<div id="wellcome-login">
					<span id="text-logo-login">Wellcome</span> <br /> <span id="text2-logo-login">Hãy tạo nên phong cách của bạn cùng
						DdauShop</span>
				</div>
				<div id=text3-logo-login>
					<p>
						<img alt="dotlogin"
							src="<c:url value="/resources/IMG/dotlogin.png"/>" /> <span>Luôn
							cập nhật xu hướng thời trang mới nhất</span>
					</p>
					<p>
						<img alt="dotlogin"
							src="<c:url value="/resources/IMG/dotlogin.png"/>" /> <span>Giảm
							tới 50% tất cả các mặt hàng cho khách hàng VIP</span>
					</p>
					<p>
						<img alt="dotlogin"
							src="<c:url value="/resources/IMG/dotlogin.png"/>" /><span>Tận
							tình tư vấn để tạo nên phong cách cho bạn</span>
					</p>
				</div>
			</div>
			<div id="container-login-right">
				<div id="register-login">
					<span class="active" id="login">Đăng nhập</span> / <span
						id="register">Đăng ký</span>
				</div>
				<div>
					<div id="container-center-login-right">
						<input name="tendangnhap" id="login-box"placeholder="Tên đăng nhập/Email" type="text" /> <br /> 
						<input name="matkhau" id="login2-box" placeholder="Mật khẩu" type="password" /> <br />
						<input id="btLogin" class="login3-box"type="submit" value="ĐỒNG Ý"/>
					</div>
					<div>
						<div id="container-center-register-right">
							<form action="" method="post">
								<input name="tendangky" id="login-box" placeholder="Tên đăng nhập/Email" type="text" /> <br />
								<input name="matkhaudangky" id="login2-box" placeholder="Mật khẩu" type="password" /> <br /> 
								<input name="matkhauxacnhandangky" id="login2-box" placeholder="Xác nhận lại mật khẩu" type="password" /> <br />
								<button class="login3-box">ĐĂNG KÝ</button>
							</form>

						</div>

					</div>
					<div id="login-fb-gg">
						<img title="Đăng nhập bằng tài khoản Google" alt="google"
							src="<c:url value="/resources/IMG/facebook.png"/>"> <img
							title="Đăng nhập bằng tài khoản Facebook" alt="facebook"
							src="<c:url value="/resources/IMG/google.png"/>"> <a
							href="/ddauShop"> <img id="btGo-home" title="Về trang chủ"
							alt="home" src="<c:url value="/resources/IMG/home.png"/>"></a>

					</div>
					<span id="kiemtradangnhap"> ${kiemtradangnhap }</span>
				</div>
			</div>
		</div>

		<jsp:include page="footer.jsp" />
</body>

</html>