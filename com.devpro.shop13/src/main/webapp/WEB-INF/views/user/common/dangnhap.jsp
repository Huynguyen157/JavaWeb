
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<main id="maincontent" class="page-main">
	<div class="page-title-wrapper">
		<h1 class="page-title">
			<span class="base" data-ui-id="page-title-wrapper">Đăng ký</span>
		</h1>
	</div>
	<div class="columns">
		<div class="row-fluid">
			<div class="login-container text-center">
				<div class="block block-customer-login"
					style="float: unset; margin: 0 auto;">
					<div class="block-title">
						<strong id="block-customer-login-heading tp_title" role="heading">Thông
							tin</strong>
					</div>
					<!-- Ajax  -->
					<!-- <div class="block-content customer-signin">
							<ul style="list-style:none;">
								<li><input name="fullName" type="text"
									class="tb validate[required]" id="fullName"
									placeholder="Họ và tên" value=""></li>
								<li><input name="email" type="text"
									class="tb validate[required,custom[email]]" id="email"
									placeholder="Email" value=""></li>
								<li><input name="password" type="password"
									class="tb validate[required,minSize[6]]" id="password"
									placeholder="Mật khẩu" value=""></li>
								<li><input name="mobile" type="text"
									class="tb validate[required,custom[phone]]" id="mobile"
									placeholder="Điện thoại" value=""></li>
								<li class="btns"><input name="submit" type="button"
									id="btnSubmit" onclick="SaveContact();" class="htmlBtn first action primary"
									value="Đăng ký"></li>
								<input type="hidden" name="csrf"
									value="d567f5199b94b7cb9a233fdab23407be-d107c84b122d04d33a44ff9a41316bb8">
							</ul>
							<script type="text/javascript">
						function SaveContact() {
							// javascript object.
							var data = {};
							data["fullName"] = $("#fullName").val();
							data["email"] = $("#email").val();
							data["password"] = $("#password").val();
							data["mobile"] = $("#mobile").val();
							alert(JSON.stringify(data));
							
							// $ === jQuery
							$.ajax({
								url : "/subcribe-ajax",
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
					</div>
		/Ajax -->
					<div class="block-content customer-signin">
						<form action="${base }/Subcribe" method="post">
							<div class="form-fields">
								<p>
									<input type="text" id="reg-email" name="username" placeholder="Họ và tên">
								</p>
								<p>
									<input type="text" id="reg-email" name="email" placeholder="Email">
								</p>
								<p>
									<input type="password" id="reg-email" name="password" placeholder="Mật khẩu">
								</p>
								<p>
									<input type="password" id="reg-pass" name="repassword" placeholder="Nhập lại mật khẩu">
								</p>
							</div>
							<div class="form-action">
								<button type="submit">Đăng ký</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>