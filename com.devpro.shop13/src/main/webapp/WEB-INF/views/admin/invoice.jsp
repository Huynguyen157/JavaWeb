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
href="${pageContext.request.contextPath}/assets/images/favicon.png">
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
	
	<div id="main-wrapper" style="margin-top:-25px;">
		
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
			
	<jsp:include page="/WEB-INF/views/admin/common/hoadon.jsp"></jsp:include>
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
	
	 <script src="../../assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="../../assets/libs/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="../../assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="../../assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="../../dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="../../dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="../../dist/js/custom.min.js"></script>
        
	<!-- /js -->
	

</body>

</html>