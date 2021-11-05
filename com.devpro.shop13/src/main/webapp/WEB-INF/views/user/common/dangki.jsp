
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<main id="maincontent" class="page-main">
	<div class="page-title-wrapper">
		<h1 class="page-title tp_title">
			<span class="base" data-ui-id="page-title-wrapper">Đăng nhập</span>
		</h1>
	</div>
	<div class="columns">
		<div class="row-fluid">
			<div class="login-container">
				<div class="block block-customer-login">
					<div class="block-title">
						<strong id="block-customer-login-heading" role="heading">Thông
							tin</strong>
					</div>
	
					<div class="block-content customer-signin">
						<form method="post" class="f">
							<ul>
								<input type="hidden" name="csrf"
									value="cdb8c05f38cdaa44dc0a2c0744c8f3ab-1fb47647bd68047683b47aa25a9ad74a">
								<li><input name="username" type="text"
									class="tb validate[required]" id="username" placeholder="Email"
									value=""></li>
								<li><input name="password" type="password"
									class="tb validate[required]" id="password"
									placeholder="Mật khẩu" value=""></li>
								<li class="btns"><input name="submit" type="submit"
									id="btnSubmit" class="htmlBtn first action primary"
									value="Đăng nhập"></li>
							</ul>
						</form>
						<a rel="nofollow" href="/user/getpassword"
							style="text-decoration: underline; font-weight: bold;"> <i
							class="fa fa-question-circle"></i> Quên mật khẩu
						</a>
					</div>
				</div>
				<div class="block block-new-customer">
					<div class="block-title">
						<strong id="block-new-customer-heading">Đăng ký tài khoản
							mới</strong>
					</div>
					<div class="block-content"
						aria-labelledby="block-new-customer-heading">
						<p>Đăng ký tài khoản ngay để có thể mua hàng nhanh chóng và dễ
							dàng hơn ! Ngoài ra còn có rất nhiều chính sách và ưu đãi cho các
							thành viên</p>
						<div class="actions-toolbar">
							<div class="primary">
								<a href="/user/signup" class="action create primary tp_button"><span>Tạo
										tài khoản</span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</main>
