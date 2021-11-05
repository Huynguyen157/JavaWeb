<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="page-breadcrumb">
	<div class="row">
		<div class="col-12 d-flex no-block align-items-center">
			<h4 class="page-title">List Contact</h4>
			<div class="ml-auto text-right">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">List
							Contact</li>
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
							<th scope="col">FirstName</th>
							<th scope="col">LastName</th>
							<th scope="col">Email</th>
							<th scope="col">Request_Type</th>
							<th scope="col">Message</th>
							<th scope="col">Status</th>
							<th scope="col">Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${contact}" var="c" varStatus="loop">
							<tr>
								<th scope="row">${loop.index + 1}</th>
								<td>${c.first_name }</td>
								<td>${c.last_name }</td>
								<td>${c.email }</td>
								<td>${c.request_type }</td>
								<td>${c.message }</td>
								<td><span id="_users_status_${c.id} }"> <c:choose>
											<c:when test="${c.status }">
												<span class="badge badge-primary">Active</span>
											</c:when>
											<c:otherwise>
												<span class="badge badge-warning">InActive</span>
											</c:otherwise>
										</c:choose>
								</span></td>
								<td>
								<button class="btn btn-danger" role="button" onclick="DeleteContact(${c.id})">Delete</button>
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
		function DeleteContact(contactId) {
			// javascript object.
			var data = {};
			
			// $ === jQuery
			$.ajax({
				url : "/contact/delete-contact?contactId=" + contactId,
				type : "post",
				contentType : "application/json",
				data : JSON.stringify(data),
	
				dataType : "json",
				success : function(jsonResult) {
					if (jsonResult.code == 200) {
						
						$("#_user_status_" + contactId).html("<span class=\"badge badge-warning\">InActive</span>");
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
