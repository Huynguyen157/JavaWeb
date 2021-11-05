<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<!-- banner -->

	<jsp:include page="/WEB-INF/views/user/common/banner.jsp"></jsp:include>

	<!-- /banner -->


	<!-- Sản phẩm nổi bât -->

	<jsp:include page="/WEB-INF/views/user/common/product.jsp"></jsp:include>

	<!-- Sản phẩm nổi bật -->

	<div class="parallax-container parallax-wrapper"
		style="margin-bottom: 50px;">
		<div class="parallax banner-middle"
			style="background: url(https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/bn/sb_1544151454_521.jpg) 80% 50% no-repeat fixed; padding: 149px 0px 190px;">
			<div class="overlay overlay-color"
				style="background-color: #000000; opacity: 0.1; filter: alpha(opacity = 20); top: 0;"></div>
			<div class="parallax-content">
				<div class="container">
					<div class="content">
						<em>Đồng hồ</em>
						<div class="clearer"></div>
						<h2>Nam</h2>
						<div class="clearer"></div>
						<a href="javascript:" class="btn btn-default"><span>Xem
								ngay</span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Sản phẩm mới -->

	<jsp:include page="/WEB-INF/views/user/common/newproduct.jsp"></jsp:include>


	<!-- /Sản phẩm mới -->


	<!-- title -->

	<jsp:include page="/WEB-INF/views/user/common/title.jsp"></jsp:include>

	<!-- /title -->



	<!-- Footer -->

	<jsp:include page="/WEB-INF/views/user/common/footer.jsp"></jsp:include>

	<!-- /Footer -->


	<div id="modalAddComplete"></div>

	<jsp:include page="/WEB-INF/views/user/common/js.jsp"></jsp:include>
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



</body>
</html>