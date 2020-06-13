<%@ page language="java" contentType="text/html;  charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<jsp:include page="header.jsp" />
</head>
<body>
	<div id="header" class="container-fluid">
		<nav class="navbar navbar-inverse none_nar">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#myNavbar">
						<span class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a href="/ddauShop" class="navbar-brand" href="#">DDAUSHOP</a>
				</div>
				<div class="collapse navbar-collapse" id="myNavbar">
					<ul class="nav navbar-nav">
						<li class="active"><a href="#">TRANG CHỦ</a></li>
						<li class="dropdown"><a class="dropdown-toggle"
							data-toggle="dropdown" href="#">SẢN PHẨM<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="#">Page 1-1</a></li>
								<li><a href="#">Page 1-2</a></li>
								<li><a href="#">Page 1-3</a></li>
							</ul></li>
						<li><a href="#">DỊCH VỤ</a></li>
						<li><a href="#">LIÊN HỆ</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li><a title="Đăng Ký" href="login/"><span class="signup"><img
									alt="icon-signup"
									src="<c:url value="/resources/IMG/signup.png"/>" /></span> ĐĂNG KÝ</a></li>
						<c:choose>
							<c:when test="${FistText != null }">
								<li><a id="FistText-Login" title="Người dùng hiện tại "
									href="/DDShop/login"><span class="signin"></span>${FistText }</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="login/" title="Đăng Nhập"><span
										class="signin"><img alt="icon-signin"
											src="<c:url value="/resources/IMG/signin.png"/>" /></span>ĐĂNG NHẬP</a></li>
							</c:otherwise>
						</c:choose>

					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div id="mider" class="container-fluid">
		<div id="goal">
			<div class="col-sm-4 wow bounceInLeft">
				<img class="icon" alt="chatluong" src='<c:url value="/resources/IMG/medal-homepage.png" />'> <br />
				<span class="text-size-homepage-1">CHẤT LƯỢNG</span> <br /> <span
					id="chatluong-1">chúng tôi cam kết sẽ mang đến cho các bạn
					chất lượng sản phẩm tốt nhất</span>
			</div>
			<div class="col-sm-4 wow bounceInDown">
				<img class="icon" alt="tietkiem"
					src="<c:url value="/resources/IMG/savemoney-homepage.png"/>"><br />
				<span class="text-size-homepage-1">TIẾT KIỆM CHI PHÍ</span> <br />
				<span id="tietkiem-1">cam kết giá rẻ nhất Việt Nam, giúp các
					bạn tiết kiệm đến hơn 20% cho từng sản phẩm</span>
			</div>
			<div class="col-sm-4 wow bounceInRight">
				<img class="icon" alt="giaohang"
					src=" <c:url value="/resources/IMG/delivery-homepage.png"/>">
				<br /> <span class="text-size-homepage-1">GIAO HÀNG</span> <br />
				<span id="giaohang-1">cam kết giao hàng tận nơi trong ngày để
					mang sản phẩm đến cho khách hàng nhanh nhất</span>
			</div>
		</div>
		<br />
		<div id="hot-item" class="wow bounceInUp">
			<span>SẢN PHẨM HOT</span>
		</div>
		<div id="item-monitor">
			<div class="item-row">
				<c:forEach var="sanpham" items="${listsanpham}">
					<a href="detail/${sanpham.getMasanpham()}">
						<div class="col-md-3 wow zoomIn">
							<div class="border-item ">
								<div>
									<img class="size-item" alt="item"
										src=" <c:url value="/resources/IMG/SanPham/${sanpham.getTensanpham()}.jpg"/>">
									<br />
								</div>
								<div class="name-item">
									<span>${sanpham.getTensanpham()}</span> <br />
								</div>
								<div class="cost-item">
									<span>${sanpham.getGiatien()}</span>
								</div>
							</div>
						</div>
					</a>
				</c:forEach>

			</div>

		</div>
	</div>
	<div id="footer" class="container-fluid">
		<div class="footer-informations">
			<div class="col-sm-4">
				<span>THÔNG TIN SHOP</span> <br />
				<div class="text-left">
					<span>DDSHOP là một thương hiệu nhiều uy tín, luôn mang đến
						sản phảm chất lượng nhất cho khách hàng</span>
				</div>
			</div>
			<div class="col-sm-4">
				<span>LIÊN HỆ</span><br />
				<div class="text-left">
					<span>Ngõ 73 Yên Xá,Thanh Trì, Hà Nội</span><br /> <span>Email:
						Tranluongson.1005@gmail.com</span><br /> <span>Hotline:0989778793</span>
				</div>
			</div>
			<div class="col-sm-4">
				<span>GÓP Ý</span><br />
				<div class="text-left">
					<form action="" method="post">
						<textarea name="Email-donate" id="email-donate"
							placeholder="Email" rows="5" cols="30"></textarea>
						<br />
						<textarea name="donate" id="detail-donate" placeholder="Đóng góp"
							rows="5" cols="30"></textarea>
						<br /> <br /> <input id="submit-box" type="submit"
							value="GỬI Ý KIẾN" />
					</form>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>