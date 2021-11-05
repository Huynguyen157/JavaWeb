<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- TagLibs -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="vi-VN" data-nhanh.vn-template="T0250">
<head>
<meta name="robots" content="noindex" />
<meta content="width=device-width, initial-scale=1, maximum-scale=1"
	name="viewport">
<meta charset="utf-8">
<title>Nhanh.vn</title>
<meta name="keywords" content="Phần mềm quản lý bán hàng">
<meta name="description"
	content="Phần mềm quản lý bán hàng Nhanh.vn giúp bạn dễ dàng quản lý kho hàng, đơn hàng, khách hàng, tiết kiệm thời gian, tăng doanh thu, giảm chi phí cho việc quản lý cửa hàng">
<meta property="og:title" content="Nhanh.vn">
<meta property="og:url" content="//t0250.store.nhanh.vn">
<meta property="og:type" content="product">
<meta name="DC.language" content="scheme=utf-8 content=vi">
<meta name="SKYPE_TOOLBAR" content="SKYPE_TOOLBAR_PARSER_COMPATIBLE">
<meta name="google-site-verification" content="">
<link href="${pageContext.request.contextPath}/img/favicon.ico"
	rel="shortcut icon" type="image/vnd.microsoft.icon">

<jsp:include page="/WEB-INF/views/user/common/css.jsp"></jsp:include>

<style type="text/css">
img.lazyload {
	opacity: 0.001;
	object-fit: scale-down !important;
}

.fb-customerchat>span>iframe.fb_customer_chat_bounce_out_v2 {
	max-height: 0 !important;
}

.fb-customerchat>span>iframe.fb_customer_chat_bounce_in_v2 {
	max-height: calc(100% - 80px) !important;
}
</style>
</head>

<!-- body -->
<body class="cms-index-index tp_background tp_text_color">
	<!-- header -->

	<jsp:include page="/WEB-INF/views/user/common/header.jsp"></jsp:include>

	<!-- /header -->

	<!-- danhmuc -->

	<input type="hidden" class="page-layout-2columns-left"
		value="page-layout-2columns-left">
	<div class="breadcrumbs">
		<ul class="items">
			<li class="item home"><a href="/">Home </a></li>
			<li class="item category41"><strong>Nam</strong></li>
		</ul>
	</div>
	<main id="maincontent" class="page-main no-padding tp_product_category">
		<div class="columns">
			<div class="column main">
				<div id="layer-product-list">
					<div class="toolbar toolbar-products">
						<div class="toolbar-sorter sorter" style="display: flex">
							<label class="sorter-label" for="sorter">Sắp xếp</label> <select
								id="sorter" class="sorter-options"
								onchange="location = this.value;">
								<option selected value="/nam-pc263596.html?">Mới nhất</option>
								<option value="/nam-pc263596.html?show=priceDesc">Giá
									giảm dần</option>
								<option value="/nam-pc263596.html?show=priceAsc">Giá
									tăng dần</option>
								<option value="/nam-pc263596.html?show=discount">Sale</option>
							</select>
						</div>
					</div>
					<div class="products wrapper grid columns4 products-grid">
						<ol class="products list items product-items ">
							<c:forEach items="${ProductEntity}" var="p">

								<li class="item product product-item ">
									<div class="product-item-info">
										<div class="product photo product-item-photo">
											<a rel="noindex" href="/logo-dan-capo-p10392422.html"> <img
												class="product-image-photo default_image lazyload"
												data-sizes="auto" src="${base}/upload/${p.avatar}"
												width="300" height="400" alt="Logo dán Capo"
												style="display: block;">
											</a> <a class="weltpixel-quickview weltpixel_quickview_button_v2"
												href="javascript:" data-id="10392422"> <span> <em
													class="porto-icon-eye"></em><span>Xem nhanh</span>
											</span>
											</a>
										</div>
										<div class="product details product-item-details">
											<strong class="product name product-item-name"> <a
												style="text-decoration: none;" rel="noindex"
												class="product-item-link tp_product_name">${p.title}</a>
											</strong>
											<div class="price-box price-final_price">
												<span class="special-price"> <span
													class="price-container price-final_price tax weee">
														<span class="price-label">Special Price</span> <span
														class="price-wrapper "> <span
															class="price tp_product_price"><fmt:setLocale
																	value="vi_VN" scope="session" /> <fmt:formatNumber
																	value="${p.price }" type="currency" /></span>
													</span>
												</span>
												</span> <span style="margin-left: 20px;" class="old-price">
													<span class="price-container price-final_price tax weee">
														<span class="price-label">was</span> <span
														class="price-wrapper "> <span
															class="price tp_product_price_old"><fmt:setLocale
																	value="vi_VN" scope="session" /> <fmt:formatNumber
																	value="${p.price_sale }" type="currency" /></span>
													</span>
												</span>
												</span>
												<div class="form-group d-flex justify-content-between">
													<input type="number" value="1" autocomplete="off"
														class="form-control" required="required" id="sl_${p.id }"
														style="width: 40px;" min="1" max="100">
													<button style="margin-left: 90px;" type="button"
														class="btn btn-warning btn-sm"
														onclick="Cart.addItemToCart(${p.id }, 'sl_${p.id }')">
														<i class="fas fa-shopping-cart"></i>
													</button>
												</div>

											</div>

											<div class="product-item-inner">
												<div class="product actions product-item-actions">
													<a rel="noindex" href="${base }/details/${p.getSeo()}"
														class="action tocompare actions-secondary "
														title="Xem chi tiết"> <span>Chi tiết</span>
													</a>
												</div>
											</div>
										</div>

									</div>
								</li>

							</c:forEach>
						</ol>
					</div>
					<div class="infinite-loader">
						<div class="text-center">
							<div id="pagination" class="disable_script clearfix">
								<div class="paginator">
									<span class="labelPages">1 - 22 / 22</span><span
										class="titlePages">&nbsp;&nbsp;Trang: </span>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- <div class="sidebar sidebar-main" style="position: relative; top: 0px;"> -->
			<jsp:include page="/WEB-INF/views/user/common/menu.jsp"></jsp:include>

			<!-- /menu -->
			<!-- </div> -->
		</div>
	</main>

	<!-- /danhmuc -->
	<nav style="margin-left: 750px;" aria-label="Page navigation example">
		<ul class="pagination">
		<%-- <li class="page-item"><a class="page-link" href="${base }/danhmuc?page=${p-1 }">Previous</a></li> --%>
			<c:forEach items="${listPage}" var="p">
				<li class="page-item"><a class="page-link"
					href="${base }/danhmuc?page=${p }">${p }</a></li>
			</c:forEach>
		<%-- <li class="page-item"><a class="page-link" href="${base }/danhmuc?page=${p+1 }">Next</a></li> --%> 
		</ul>
	</nav>
	<!-- Footer -->

	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>

	<!-- /Footer -->

	<div id="modalAddComplete"></div>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/cart.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/lazysizes.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/location.vn.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/xfbml.customerchat.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/t0250.store.nhanh.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/css/fontawesome-free-5.15.1-web/attribution.js"></script>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id))
				return;
			js = d.createElement(s);
			js.id = id;
			js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js#xfbml=1&version=v2.12&autoLogAppEvents=1';
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	</script>


</body>
</html>