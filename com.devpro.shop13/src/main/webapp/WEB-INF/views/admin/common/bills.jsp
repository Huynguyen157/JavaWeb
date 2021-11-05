<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="page-breadcrumb">
	<div class="row">
		<div class="col-12 d-flex no-block align-items-center">
			<h4 class="page-title">List Bills</h4>
			<div class="ml-auto text-right">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">List
							Bills</li>
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
				<form action="${base }/admin/list-bills" method="get">
					<div class="card-body">
						<input type="text" name="keyword"
							style="margin-left: 850px; width: 150px;" />
						<button type="submit" value="Search">Search</button>
					</div>
					<table class="table table-striped">
						<thead>
							<tr>
								<th scope="col">#</th>
								<th scope="col">Name</th>
								<th scope="col">Email</th>
								<th scope="col">Address</th>
								<th scope="col">Phone</th>
								<th scope="col">Quantity</th>
								<th scope="col">Total Price</th>
								<th scope="col">Status</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${bills}" var="b" varStatus="loop">
								<tr>
									<th scope="row">${loop.index + 1}</th>
									<td>${b.customer_name }</td>
									<td>${b.customer_email }</td>
									<td>${b.customer_address }</td>
									<td>${b.customer_phone}</td>
									<td>${b.total }</td>
									<td>${b.total_price }</td>
									<td><span id="_saleorder_status_${b.id} }"> <c:choose>
												<c:when test="${b.status }">
													<span class="badge badge-primary">Active</span>
												</c:when>
												<c:otherwise>
													<span class="badge badge-warning">InActive</span>
												</c:otherwise>
											</c:choose>
									</span></td>
									<td>
										<a href="${base }/admin/invoice/${b.id}"
										class="btn btn-primary">View Detail<i class="fas fa-eye"
											style="margin-left: 5px"></i></a> <a
										href="${base }/admin/del-order/${b.id}" class="btn btn-danger">Delete</a>
										<%-- <button class="btn btn-danger" role="button"
										onclick="DeleteProduct(${p.id})">Delete</button>
										</td> --%>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<nav style="margin-left: 550px;"
						aria-label="Page navigation example">
						<ul class="pagination">
							<%-- <li class="page-item"><a class="page-link" href="${base }/admin/list-product?page=${p-1 }">Previous</a></li> --%>
							<c:forEach items="${listPage}" var="p">
								<li class="page-item"><a class="page-link"
									href="${base }/admin/list-product?page=${p }">${p }</a></li>
							</c:forEach>
							<%-- <li class="page-item"><a class="page-link" href="${base }/admin/list-product?page=${p+1 }">Next</a></li> --%>
						</ul>
					</nav>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- js -->
<script type="text/javascript">
	function DeleteProduct(seo) {
		alert("Xóa thành công ");
	}
</script>
<script type="text/javascript">
	function DeleteProduct(productId) {
		// javascript object.
		var data = {};

		// $ === jQuery
		$
				.ajax({
					url : "/admin/delete-product?productId=" + productId,
					type : "post",
					contentType : "application/json",
					data : JSON.stringify(data),

					dataType : "json",
					success : function(jsonResult) {
						if (jsonResult.code == 200) {

							$("#_product_status_" + productId)
									.html(
											"<span class=\"badge badge-warning\">InActive</span>");
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
