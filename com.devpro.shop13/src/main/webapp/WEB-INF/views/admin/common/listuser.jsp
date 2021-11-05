<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="page-breadcrumb">
	<div class="row">
		<div class="col-12 d-flex no-block align-items-center">
			<h4 class="page-title">List User</h4>
			<div class="ml-auto text-right">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">List
							User</li>
					</ol>
				</nav>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row">
		<div class="col-12" style="width: 1000px;">
			<div class="card">
				<table class="table table-striped">
					<thead>
						<tr>
							<th scope="col">#</th>
							<th scope="col">Role</th>
							<th scope="col">Username</th>
							<th scope="col">Email</th>
							<th scope="col">Password</th>
							<th scope="col">Status</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>

						<c:forEach items="${users}" var="u" varStatus="loop">
							<tr>
								<th scope="row">${loop.index + 1}</th>
								<c:forEach items="${u.roles}" var="r">
									<td>${r.name }</td>
								</c:forEach>
								<td>${u.username }</td>
								<td>${u.email }</td>
								<td>${u.password }</td>
								<td><span id="_users_status_${u.id} }"> <c:choose>
											<c:when test="${u.status }">
												<span class="badge badge-primary">Active</span>
											</c:when>
											<c:otherwise>
												<span class="badge badge-warning">InActive</span>
											</c:otherwise>
										</c:choose>
								</span></td>
								<td>
									<button class="btn btn-danger" role="button"
										onclick="DeleteUser(${u.id})">Delete</button>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</div>
		</div>
	</div>
</div>
<!-- js -->
<script type="text/javascript">
		function DeleteUser(userId) {
			// javascript object.
			var data = {};
			
			// $ === jQuery
			$.ajax({
				url : "/Subcribe/delete-user?userId=" + userId,
				type : "post",
				contentType : "application/json",
				data : JSON.stringify(data),
	
				dataType : "json",
				success : function(jsonResult) {
					if (jsonResult.code == 200) {
						
						$("#_user_status_" + userId).html("<span class=\"badge badge-warning\">InActive</span>");
						alert("successful delele");
						
					} else {
						alert(jsonResult.message);
					}
				},
				error : function(jqXhr, textStatus, errorMessage) { // error callback 
					
				}
			});
		}
	</script>
