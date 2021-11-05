<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="page-breadcrumb">
	<div class="row">
		<div class="col-12 d-flex no-block align-items-center">
			<h4 class="page-title">List SaleOrder</h4>
			<div class="ml-auto text-right">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">List
							SaleOrder</li>
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
				<form action="${base }/invoice" method="get">
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
								<th scope="col">Quantity</th>
								<th scope="col">Price</th>
								<th scope="col">Product</th>
								<th scope="col">Status</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${invoice}" var="i" varStatus="loop">
								<tr>
									<th scope="row">${loop.index + 1}</th>
									<td>${i.title }</td>
									<td>${i.quality }</td>
									<td>${i.price }</td>
									<td>${i.avatar }</td>

									<td><span id="_saleorderproducts_status_${i.id} }">
											<c:choose>
												<c:when test="${i.status }">
													<span class="badge badge-primary">Active</span>
												</c:when>
												<c:otherwise>
													<span class="badge badge-warning">InActive</span>
												</c:otherwise>
											</c:choose>
									</span></td>
									<td>
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