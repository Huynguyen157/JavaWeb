<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Tell the browser to be responsive to screen width -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<!-- Favicon icon -->
<jsp:include page="/WEB-INF/views/admin/common/css.jsp"></jsp:include>
</head>

<body>

	<!-- Preloader - style you can find in spinners.css -->

	<div class="preloader">
		<div class="lds-ripple">
			<div class="lds-pos"></div>
			<div class="lds-pos"></div>
		</div>
	</div>

	<!-- Main wrapper - style you can find in pages.scss -->

	<div id="main-wrapper">

		<!-- Topbar header - style you can find in pages.scss -->

		<!-- header  -->

		<jsp:include page="/WEB-INF/views/admin/common/header.jsp"></jsp:include>

		<!-- /header  -->
		<!-- aside -->

		<jsp:include page="/WEB-INF/views/admin/common/aside.jsp"></jsp:include>

		<!-- /aside -->

		<!-- Page wrapper  -->

		<div class="page-wrapper">
			<!-- container -->

			<jsp:include page="/WEB-INF/views/admin/common/container.jsp"></jsp:include>

			<!-- container -->
			<!-- footer -->

			<footer class="footer text-center">
				All Rights Reserved by Matrix-admin. Designed and Developed by <a
					href="https://wrappixel.com">WrapPixel</a>.
			</footer>

			<!-- End footer -->

		</div>

		<!-- End Page wrapper  -->

	</div>
	<!-- js -->

	<jsp:include page="/WEB-INF/views/admin/common/js.jsp"></jsp:include>

	<!-- /js -->


</body>

</html>