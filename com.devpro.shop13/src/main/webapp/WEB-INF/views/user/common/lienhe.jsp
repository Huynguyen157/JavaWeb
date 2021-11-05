<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- SPRING FORM -->
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>


<div class="contact-index-index">
	<div class="page-wrapper">
		<div class="container">
			<iframe
				src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.5497788272964!2d105.81617031436815!3d21.01067699377253!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab7d58d6ec3d%3A0x2679fe35efef4ebf!2zMTAyIFRow6FpIFRo4buLbmgsIFRydW5nIExp4buHdCwgxJDhu5FuZyDEkGEsIEjDoCBO4buZaSwgVmnhu4d0IE5hbQ!5e0!3m2!1svi!2s!4v1502875894822"
				width="100%" height="400px" frameborder="0" style="border: 0"
				allowfullscreen></iframe>
		</div>
		<main id="maincontent" class="page-main">
			<div class="columns">
				<div class="column main">
					<div class="row">

<!-- 						<div class="col-md-8">

							<form class="form contact" action="/contact-normal"
								id="contact-form" method="post">
								<fieldset class="fieldset" style="margin: 0 0 20px;">
									<legend class="legend">
										<span>Góp ý</span>
									</legend>
									<fieldset class="fieldset">
										<div class="fields">
											<div class="field name required">
												<label class="label" for="name"><span>Họ tên</span></label>
												<div class="control">
													<input name="fullName" id="name"
														class="input-text name_register" type="text">
												</div>
											</div>
											<div class="field email required">
												<label class="label" for="email"><span>Email</span></label>
												<div class="control">
													<input name="email" id="email" value=""
														class="input-text email_register" type="email">
												</div>
											</div>
											<div class="field telephone">
												<label class="label" for="telephone"><span>Số
														điện thoại</span></label>
												<div class="control">
													<input name="telephone" id="telephone"
														class="input-text mobile_register" type="number">
												</div>
											</div>
											<div class="field telephone">
												<label class="label" for="telephone"><span>Địa
														chỉ</span></label>
												<div class="control">
													<input name="address" id="address"
														class="input-text address_register" type="text">
												</div>
											</div>
										</div>
										<div class="fields">
											<div class="field comment required">
												<label class="label" for="comment"><span>Nội
														dung</span></label>
												<div class="control">
													<textarea name="comment" id="comment"
														class="input-text content_register" cols="5" rows="8"></textarea>
												</div>
											</div>
										</div>
									</fieldset>
								</fieldset>
								<div class="actions-toolbar">
									<div class="primary">

										<button type="submit"
											class="tp_button action submit primary send_contact">Submit</button>
									</div>
								</div>
							</form>
						</div>

 -->
<!-- Spring form -->
						 <div class="col-md-8">
							<form class="form contact" action="${base }/contact-ajax"
								id="contact-form" method="post">
								<fieldset class="fieldset" style="margin: 0 0 20px;">
									<legend class="legend">
										<span>Góp ý</span>
									</legend>
									<fieldset class="fieldset">
										<div class="fields">
											<div class="field name required">
												<label class="label" for="name"><span>First Name</span></label>
												<div class="control">
													<input id="name" name="firstName"
														class="input-text name_register" type="text" />
												</div>
											</div>
											<div class="field name required">
												<label class="label" for="name"><span>Last Name</span></label>
												<div class="control">
													<input id="name" name="lastName"
														class="input-text name_register" type="text" />
												</div>
											</div>
											<div class="field email required">
												<label class="label" for="email"><span>Email</span></label>
												<div class="control">
													<input 
														class="input-text email_register" type="email"
														name="email">
												</div>
											</div>
											<div class="field telephone">
												<label class="label" for="telephone"><span>Subject</span></label>
												<div class="control">
													<input 
														class="input-text mobile_register" type="text"
														name="subject" >
												</div>
											</div>
										</div>
										<div class="fields">
											<div class="field comment required">
												<label class="label" for="comment"><span>Nội
														dung</span></label>
												<div class="control">
													<textarea name="message" 
														class="input-text content_register" cols="5" rows="8">
													</textarea>
												</div>
											</div>
										</div>
									</fieldset>
								</fieldset>
								<div class="actions-toolbar">
									<div class="primary">

										<button type="submit"
											class="tp_button action submit primary send_contact">Submit</button>
									</div>
								</div>
							</form>
						</div>
<!-- /Spring form --> 
<!-- Ajax -->
             
             <!-- 
         						<div class="col-md-8">
								<fieldset class="fieldset" style="margin: 0 0 20px;">
									<legend class="legend">
										<span>Góp ý</span>
									</legend>
									<fieldset class="fieldset">
										<div class="fields">
											<div class="field name required">
												<label class="label" for="name"><span>Họ tên</span></label>
												<div class="control">
													<input name="fullName" id="name"
														class="input-text name_register" type="text">
												</div>
											</div>
											<div class="field email required">
												<label class="label" for="email"><span>Email</span></label>
												<div class="control">
													<input name="email" id="email" value=""
														class="input-text email_register" type="email">
												</div>
											</div>
											<div class="field telephone">
												<label class="label" for="telephone"><span>Số
														điện thoại</span></label>
												<div class="control">
													<input name="telephone" id="telephone"
														class="input-text mobile_register" type="number">
												</div>
											</div>
											<div class="field telephone">
												<label class="label" for="telephone"><span>Địa
														chỉ</span></label>
												<div class="control">
													<input name="address" id="address"
														class="input-text address_register" type="text">
												</div>
											</div>
										</div>
										<div class="fields">
											<div class="field comment required">
												<label class="label" for="comment"><span>Nội
														dung</span></label>
												<div class="control">
													<textarea name="comment" id="comment"
														class="input-text content_register" cols="5" rows="8"></textarea>
												</div>
											</div>
										</div>
									</fieldset>
								</fieldset>
								<div class="actions-toolbar">
									<div class="primary">

										<button type="button" onclick="SaveContact();"
											class="tp_button action submit primary send_contact">Submit</button>
									</div>
								</div>
			
							<script type="text/javascript">
						function SaveContact() {
							// javascript object.
							var data = {};
							data["fullName"] = $("#name").val();
							data["email"] = $("#email").val();
							data["telephone"] = $("#telephone").val();
							data["address"] = $("#address").val();
							data["comment"] = $("#comment").val();
							alert(JSON.stringify(data));
							
							// $ === jQuery
							$.ajax({
								url : "/contact-ajax",
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
 -->
<!-- /Ajax -->


						<div class="col-md-4 contact-info">
							<div class="contacts-title">Thông tin</div>
							<div class="row">
								<div class="col-md-12">
									<i class="porto-icon-phone"></i>
									<p>036 203 2032</p>
									<p>037 203 2032</p>
								</div>
								<div class="col-md-12">
									<i class="porto-icon-mobile"></i>
									<p>037-123-3922</p>
									<p>032-123-3928</p>
								</div>
								<div class="col-md-12">
									<i class="porto-icon-mail-alt"></i>
									<p>Huynguyen@gmail.com</p>
									<p>Huynguyen@gmail.com</p>
								</div>
								<div class="col-md-12">
									<i class="porto-icon-skype"></i>
									<p>NguyenQuangHuy_skype</p>
									<p>NguyenQuangHuy_template</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>
</div>