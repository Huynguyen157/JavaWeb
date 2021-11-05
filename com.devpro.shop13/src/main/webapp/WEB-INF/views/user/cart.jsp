<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<!-- cart -->

	<link rel="canonical" rel="nofollow" href="/cart" />
	<div class="breadcrumbs">
		<ul class="items">
			<li class="item home"><a href="/" title="Trang chủ">Home </a></li>
			<li class="item product"><strong>Giỏ hàng</strong></li>
		</ul>
	</div>
	<main id="maincontent" class="page-main" style="padding-top: 0;">
		<div class="page-title-wrapper">
			<h1 class="page-title">
				<span class="base" data-ui-id="page-title-wrapper">Giỏ hàng</span>
			</h1>
		</div>
		<div class="columns">
			<div class="column main">
				<div class="cart-container">
					<div class="cart-summary">
						<strong class="summary title">Thông tin</strong>
						<div id="cart-totals" class="cart-totals">
							<div class="table-wrapper">
								<table class="data table totals">
									<caption class="table-caption">Total</caption>
									<tbody>
										<c:choose>
											<c:when test="${isLogined}">
					                            Your information existed
				                          </c:when>
											<c:otherwise>
												<div class="col-lg-6 col-md-12 col-sm-12">
													<form action="${base }/cart/thanhtoan" method="post">
														<div class="form-fields">
															<p>
																<label for="reg-email" class="important">Họ tên</label>
																<input style="width: 300px;" type="text" id="reg-email"
																	name="fullName">
															</p>
															<p>
																<label for="reg-email" class="important">Email </label>
																<input style="width: 300px;" type="text" id="reg-email"
																	name="email">
															</p>
															<p>
																<label for="reg-email" class="important"> Địa
																	chỉ</label> <input style="width: 300px;" type="text"
																	id="reg-email" name="address">
															</p>
															<p>
																<label for="reg-pass" class="important">Số điện
																	thoại</label> <input style="width: 300px;" type="number"
																	id="reg-pass" name="tel">
															</p>
															<p style="width: 300px; font-size: 16px; color: black;">
																<span>Tạm tính:<fmt:setLocale value="vi_VN"
																		scope="session" /> <fmt:formatNumber
																		value="${totalprice}" type="currency" />
																</span>
															</p>
															<p style="width: 300px; font-size: 16px; color: black;">
																<label for="reg-email" class="important"> Chưa
																	bao gồm phí vận chuyển</label>
															</p>
															<p
																style="font-weight: bold; width: 300px; font-size: 16px; color: black">
																<span>Tổng tiền:<fmt:setLocale value="vi_VN"
																		scope="session" /> <fmt:formatNumber
																		value="${totalprice}" type="currency" /></span>
															</p>
														</div>
														<ul style="width: 300px;"
															class="checkout methods items checkout-methods-items">
															<li class="item">
																<button type="submit"
																	class="action primary checkout tp_button">
																	<span>Đặt mua</span>
																</button>
															</li>
															<li class="item">
																<button type="button"
																	class="action primary checkout tp_button">
																	<a href="${base}/danhmuc"><span
																		style="color: white;">Tiếp tục mua hàng</span></a>
																</button>
															</li>
														</ul>
													</form>
												</div>
											</c:otherwise>
										</c:choose>
									</tbody>
								</table>
							</div>
						</div>

					</div>

					<form action="" method="post" id="form-validate"
						class="form form-cart">
						<div class="cart table-wrapper">
							<table id="shopping-cart-table" class="cart items data table">
								<thead>
									<tr>
										<th class="col item" scope="col"><span>Sản phẩm</span></th>
										<th class="col qty" scope="col"><span>Số lượng</span></th>
										<th class="col subtotal" scope="col"><span>Thànhtiền</span></th>
										<th class="col subtotal" scope="col"></th>
									</tr>
								</thead>

								<c:forEach items="${cart.cartItems}" var="item" varStatus="loop">
									<tbody class="cart item">
										<tr class="item-info">
											<td data-th="Item" class="col item"><a
												title="Tai nghe full beat" class="product-item-photo"> <span
													class="product-image-container" style="width: 165px;">
														<span class="product-image-wrapper"
														style="padding-bottom: 100%;"> <img
															class="product-image-photo"
															src="${base}/upload/${item.productImage }"
															alt="Tai nghe full beat" style="max-width: 160px;" />
													</span>
												</span>
											</a>
												<div class="product-item-details">
													<strong class="product-item-name"> <a>${item.productName }</a>
													</strong>
													<dl class="item-options">
														<dt>Giá</dt>
														<fmt:setLocale value="vi_VN" scope="session" />
														<fmt:formatNumber value="${item.priceUnit }"
															type="currency" />
													</dl>
												</div></td>
											<td class="col qty"><div class="field qty"
													style="margin-top: 35px;">
													<label class="label"> <span>Qty</span></label>
													${item.quanlity }
												</div></td>
											<td class="col subtotal" data-th="Subtotal"><span
												class="price-excluding-tax" style="margin-top: 35px;">
													<span class="cart-price"> <span class="price">
															<fmt:setLocale value="vi_VN" scope="session" /> <fmt:formatNumber
																value="${item.priceUnit *item.quanlity }"
																type="currency" />
													</span>
												</span>
											</span></td>
											<td class="col subtotal" data-th="Subtotal">
												<button type="button" style="margin-top: 35px;"
													onclick="DeleteItemInCart(${item.productId})">
													<i class="fas fa-trash-alt"></i>
												</button>
											</td>
										</tr>
									</tbody>
								</c:forEach>
							</table>
						</div>
						<div></div>
					</form>
				</div>
			</div>
		</div>
	</main>

	<!-- /cart -->

	<!-- Footer -->

	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>

	<!-- /Footer -->

	<div id="modalAddComplete"></div>
	<script type="text/javascript">
		function DeleteItemInCart(productId) {
			// javascript object.
			var data = {};
			data["productId"] = productId;
			$.ajax({
				url : "/cart_delete",
				type : "post",
				contentType : "application/json",
				data : JSON.stringify(data),

				dataType : "json",
				success : function(jsonResult) {
					$("#totalItemsInCart").html(jsonResult.totalItems);
					alert('Successfully removed !');
					location.reload();
				},
				error : function(jqXhr, textStatus, errorMessage) { // error callback 

				}
			});
		}
	</script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/cart.js"></script>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/cart.store.nhanh.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/js/store.nhanh.js"></script>
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
	<script src="${pageContext.request.contextPath}/js/location.vn.js"
		defer></script>
	<script src="${pageContext.request.contextPath}/js/lazysizes.min.js"
		async=""></script>
	</script>


</body>
</html>