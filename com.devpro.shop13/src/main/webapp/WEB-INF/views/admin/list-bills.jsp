<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- TagLibs -->


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
<link rel="icon" type="image/png" sizes="16x16"
	href="${pageContext.request.contextPath}/assets/images/favicon.png">
<title>Matrix Template - The Ultimate Multipurpose admin
	template</title>
<!-- Custom CSS -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/extra-libs/multicheck/multicheck.css">
<link
	href="${pageContext.request.contextPath}/assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.css"
	rel="stylesheet">
<link href="${pageContext.request.contextPath}/dist/css/style.min.css"
	rel="stylesheet">
<jsp:include page="/WEB-INF/views/admin/common/css.jsp"></jsp:include>
</head>

<body>
	<div class="preloader">
		<div class="lds-ripple">
			<div class="lds-pos"></div>
			<div class="lds-pos"></div>
		</div>
	</div>
	<div id="main-wrapper">
		<jsp:include page="/WEB-INF/views/admin/common/header.jsp"></jsp:include>
		<jsp:include page="/WEB-INF/views/admin/common/aside.jsp"></jsp:include>
		<div class="page-wrapper">
		
		 <jsp:include page="/WEB-INF/views/admin/common/bills.jsp"></jsp:include> 
		
	    </div>
	</div>
	<jsp:include page="/WEB-INF/views/admin/common/js.jsp"></jsp:include>
	<script src="${pageContext.request.contextPath}/js/main.js"></script>
	<script>
		/****************************************
		 *       Basic Table                   *
		 ****************************************/
		$('#zero_config').DataTable();
	</script>

</body>

</html>