<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<div class="page-breadcrumb">
	<div class="row">
		<div class="col-12 d-flex no-block align-items-center">
			<h4 class="page-title" style="margin-left: 560px;">Add Product</h4>
			<div class="ml-auto text-right">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="#">Home</a></li>
						<li class="breadcrumb-item active" aria-current="page">Library</li>
					</ol>
				</nav>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid">
	<!-- ============================================================== -->
	<!-- Start Page Content -->
	<!-- ============================================================== -->
	<div class="row">
		<div class="col-md-6">
			<!-- Spring form -->
			<!-- 
		     thêm các thuộc tính action, methob, modelAttribute lấy ở hàm GET
		     thêm sf: đằng trước thẻ form và thẻ input,textarea
		     thêm  thuộc tính path ở thẻ input
	     -->
			<div class="card" style="width: 1000px; margin-left: 120px;">
				<sf:form class="form-horizontal" action="/addproduct" method="post"
					modelAttribute="productEntity" enctype="multipart/form-data">
					<sf:hidden path="id" />
					<div class="card-body" style="width: 1000px;">
						<h4 class="card-title">Product Info</h4>
						<div class="form-group row">
							<label for="category">Category (required)</label>
							<sf:select path="categories.id" class="form-control"
								id="category">
								<sf:options items="${categories}" itemValue="id"
									itemLabel="name" />
							</sf:select>
						</div>
						<div class="form-group row">
							<label for="title">Title (required)</label>
							<sf:input path="title" autocomplete="off" type="text"
								class="form-control" id="title" placeholder="Title"
								required="required"></sf:input>
						</div>
						<div class="form-group row">
							<label for="price">Price (required)</label>
							<sf:input type="number" autocomplete="off" path="price"
								class="form-control" id="price" placeholder="Price"
								required="required"></sf:input>
						</div>
						<div class="form-group row">
							<label for="price_sale">Price Sale (required)</label>
							<sf:input type="number" autocomplete="off" path="price_sale"
								class="form-control" id="price_sale" placeholder="Price sale"
								required="required"></sf:input>
						</div>
						<div class="form-group row">
							<label for="short_description">Description (required)</label>
							<sf:textarea autocomplete="off" path="short_description"
								class="form-control" placeholder="Short Description"
								id="short_description" rows="3" required="required"></sf:textarea>
						</div>
						<div class="form-group row">
							<label for="detail_description">Details (required)</label>
							<sf:textarea autocomplete="off" path="detail_description"
								class="form-control summernote" id="detail_description" rows="3"
								required="required"></sf:textarea>
								
						</div>
						<div class="form-group form-check">
							<sf:checkbox path="is_hot" class="form-check-input" id="isHot" />
							<label class="form-check-label" for="isHot">Is Hot
								Product?</label>
						</div>

						<div class="form-group row">
							<label for="fileProductAvatar">Avatar</label> <input
								id="fileProductAvatar" name="productAvatar" type="file"
								class="form-control-file">
						</div>
						<div class="form-group row">
							<label for="fileProductPictures">Picture(Multiple)</label> <input
								id="fileProductPictures" name="productPictures" type="file"
								class="form-control-file" multiple="multiple">
						</div>

					</div>
					<a href="/admin/list-product" class="btn btn-secondary active"
						role="button" aria-pressed="true">Back to list</a>
					<button type="submit" class="btn btn-primary">Save Product</button>
				</sf:form>
			</div>

			<!-- /Spring form  -->
			<!-- Ajax form -->
			<!-- 
		Bỏ thẻ form 
		thêm thuộc tính id trong input,textarea
		thêm javacript chứa ajax
		
		
		 -->
			<!-- <div class="card" style="width:1000px; margin-left:120px;">
					<div class="card-body">
						<h4 class="card-title">Product Info</h4>
						<div class="form-group row">
							<label for="ProID"
								class="col-sm-3 text-right control-label col-form-label">
								Product ID</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="ProID" name="proID"
									placeholder="">
							</div>
						</div>
						<div class="form-group row">
							<label for="ProName"
								class="col-sm-3 text-right control-label col-form-label">Product Name</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="ProName" name="proName"
									placeholder="">
							</div>
						</div>
						<div class="form-group row">
							<label for="Brand"
								class="col-sm-3 text-right control-label col-form-label">Brand</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="Brand" name="brand"
									placeholder="">
							</div>
						</div>
						<div class="form-group row">
							<label for="Category"
								class="col-sm-3 text-right control-label col-form-label">Category</label>
							<div class="col-sm-9">
								<input type="text" class="form-control" id="Category" name="category"
									placeholder="">
							</div>
						</div>
						<div class="form-group row">
							<label for="Description"
								class="col-sm-3 text-right control-label col-form-label">Description</label>
							<div class="col-sm-9">
								<textarea class="form-control" name="description" id="Description"></textarea>
							</div>
						</div>
					</div>
					<div class="border-top">
						<div class="card-body">
							<button type="button" class="btn btn-primary" onclick="SaveContact();" >Submit</button>
						</div>
					</div>
				<script type="text/javascript">
						function SaveContact() {
							// javascript object.
							var data = {};
							data["proID"] = $("#ProID").val();
							data["proName"] = $("#ProName").val();
							data["brand"] = $("#Brand").val();
							data["category"] = $("#Category").val();
							data["description"] = $("#Description").val();
							alert(JSON.stringify(data));
							
							// $ === jQuery
							$.ajax({
								url : "/add-product",
								type : "post",
								contentType : "application/json",
								data : JSON.stringify(data),
					
								dataType : "json",
								success : function(jsonResult) {
									if (jsonResult.code == 200) {
										alert(jsonResult.status)
									} else {
										alert(jsonResult.data);
									}
								},
								error : function(jqXhr, textStatus, errorMessage) { // error callback 
									
								}
							});
						}
					</script>
			</div>  -->
			<!-- Ajax form -->
		</div>
	</div>


</div>
