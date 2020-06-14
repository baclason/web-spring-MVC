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
	<div id="header-detail" class="container-fluid">
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
						<li><a href="#">TRANG CHỦ</a></li>
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
						<li><a title="Đăng Ký" href="#"><span class="signup"><img
									alt="icon-signup"
									src="<c:url value="/resources/IMG/signup.png"/>" /></span> ĐĂNG KÝ</a></li>
						<c:choose>
							<c:when test="${FistText != null }">
								<li><a id="FistText-Login" title="Người dùng hiện tại "
									href="/ddauShop/login"><span class="signin"></span>${FistText }</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="/ddauShop/login" title="Đăng Nhập"><span
										class="signin"><img alt="icon-signin"
											src="<c:url value="/resources/IMG/signin.png"/>" /></span>ĐĂNG NHẬP</a></li>
							</c:otherwise>
						</c:choose>

					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div id="mider-detail" class="container-fluid ">
		<div class="col-sm-2" id="detail-menu">
			<span id="menu-detailpage">Danh mục khác</span>
			<ul class="text-menu">
				<li>Quần dài
					<ul>
						<li>Quần dài</li>
						<li>Áo dài tay</li>
						<li>Áo ngắn tay</li>
						<li>Quần kaki</li>
						<li>Quần dài</li>

					</ul>
				</li>
				<li>Áo dài tay</li>
				<li>Áo ngắn tay</li>
				<li>Quần kaki</li>
				<li>Quần dài</li>
				<li>Áo dài tay</li>
				<li>Áo ngắn tay</li>
				<li>Quần kaki</li>
			</ul>
		</div>

		<div class="col-sm-8">
			<div class="col-sm-4">
				<img id="size-item-detailpage" alt="item"
					src=" <c:url value="/resources/IMG/SanPham/${SanPhamTheoMa.getTensanpham()}.jpg"/>">
			</div>
			<div class="col-sm-8">
				<div>
					<span id="tensanpham"
						data-masanpham="${SanPhamTheoMa.getMasanpham()}"
						class="font-style-name">${SanPhamTheoMa.getTensanpham()}</span> <br />
					<span id="giatien">${SanPhamTheoMa.getGiatien()}</span>
				</div>

				<table id="table-detailpage" class="table">

					<thead>
						<tr id="text-menubox">
							<td>Màu sản phẩm</td>
							<td>Size</td>
							<td>Số Lượng</td>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="chitietsanpham"
							items="${SanPhamTheoMa.getChitietsanpham()}">
							<tr>
								<td class="mau"
									data-mamau=" ${chitietsanpham.getMausanpham().getMamau()}">${chitietsanpham.getMausanpham().getTenmau()}</td>
								<td class="size"
									data-masize="${chitietsanpham.getSizesanpham().getMasize()} ">${chitietsanpham.getSizesanpham().getSize()}</td>
								<td class="soluong" data-soluong="${chitietsanpham.getSoluong()}">${chitietsanpham.getSoluong()}</td>
								<td><button class="btn-success btn-giohang">Thêm vào giỏ</button></td>
							</tr>
						</c:forEach>

					</tbody>
				</table>
			</div>
		</div>


		<div id="text-detailpage-mota" class="col-sm-2">
			<span id="mota-detailpage">Mô tả</span> <br /> <span>${SanPhamTheoMa.getMota()}</span>
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