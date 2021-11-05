<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<div class="breadcrumbs">
	<ul class="items">
		<li class="item home"><a href="/" title="Trang chủ">Home </a></li>
		<li class="item category"><a href="/tre-em-pc263603.html">Trẻ
				em</a></li>
		<li class="item product"><strong>${product.title}</strong></li>
	</ul>
</div>
<main id="maincontent" class="page-main tp_product_detail">
	<div class="columns">
		<div class="column main">
			<div class="product media">
				<div class="gallery-placeholder"
					data-gallery-role="gallery-placeholder">
					<div class="fotorama-item fotorama" data-gallery-role="gallery">
						<div class="fotorama__wrap fotorama__wrap--css3">
							<div class="fotorama__stage" id="imgView"
								style="height: 400px; text-align: center; display: block">
								<img
									src="${base}/upload/${product.avatar}"
									class="cloudzoom pview-img" id="z"
									data-cloudzoom="zoomImage: '${base}/upload/${product.avatar}',
zoomPosition:'inside',
easeTime: 0,
easing: 0,
zoomOffsetX:0,
disableZoom: false,
disableOnScreenWidth:768" />
							</div>
							<div class="fotorama__nav-wrap fotorama__nav-wrap--horizontal"
								data-gallery-role="nav-wrap">
								<div class="fotorama__nav__shaft" id="img-child"
									style="width: 340px;">
									<div class="fotorama__nav__frame fotorama__nav__frame--thumb">
										<div
											class="fotorama__thumb fotorama__loaded fotorama__loaded--img">
											<img
												src="${base}/upload/${product.avatar}"
												class="cloudzoom-gallery"
												data-cloudzoom="useZoom: '.cloudzoom', image: '${base}/upload/${product.avatar}', zoomImage: '${base}/upload/${product.avatar}'" />
										</div>
									</div>
									<div class="fotorama__nav__frame fotorama__nav__frame--thumb">
										<div
											class="fotorama__thumb fotorama__loaded fotorama__loaded--img">
											<img
												src="https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20181206/18_4_1_600x600.jpg"
												class="cloudzoom-gallery"
												data-cloudzoom="useZoom: '.cloudzoom', image: 'https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20181206/18_4_1_600x600.jpg', zoomImage: 'https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20181206/18_4_1_600x600.jpg'" />
										</div>
									</div>
									<div class="fotorama__nav__frame fotorama__nav__frame--thumb">
										<div
											class="fotorama__thumb fotorama__loaded fotorama__loaded--img">
											<img
												src="https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20190108/1_adfb6f03_d4ee_4fd1_a848_3efa935240a6_800x_600x600.jpg"
												class="cloudzoom-gallery"
												data-cloudzoom="useZoom: '.cloudzoom', image: 'https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20190108/1_adfb6f03_d4ee_4fd1_a848_3efa935240a6_800x_600x600.jpg', zoomImage: 'https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20190108/1_adfb6f03_d4ee_4fd1_a848_3efa935240a6_800x_600x600.jpg'" />
										</div>
									</div>
									<div class="fotorama__nav__frame fotorama__nav__frame--thumb">
										<div
											class="fotorama__thumb fotorama__loaded fotorama__loaded--img">
											<img
												src="https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20190108/img_5348_600x600_600x600.jpg"
												class="cloudzoom-gallery"
												data-cloudzoom="useZoom: '.cloudzoom', image: 'https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20190108/img_5348_600x600_600x600.jpg', zoomImage: 'https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20190108/img_5348_600x600_600x600.jpg'" />
										</div>
									</div>
									<div class="fotorama__nav__frame fotorama__nav__frame--thumb">
										<div
											class="fotorama__thumb fotorama__loaded fotorama__loaded--img">
											<img
												src="https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20190108/dong_ho_600x600.jpg"
												class="cloudzoom-gallery"
												data-cloudzoom="useZoom: '.cloudzoom', image: 'https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20190108/dong_ho_600x600.jpg', zoomImage: 'https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20190108/dong_ho_600x600.jpg'" />
										</div>
									</div>
								</div>
								<a href="javascript:void(0)" id="prevSlideZ" class="spriteIcon"><i
									class="fa fa-angle-down" aria-hidden="true"></i></a> <a
									href="javascript:void(0)" id="nextSlideZ" class="spriteIcon"><i
									class="fa fa-angle-up" aria-hidden="true"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="product-info-main">
				<div class="page-title-wrapper product">
					<h1 class="page-title">
						<span class="base tp_product_detail_name">${product.title}</span>
					</h1>
				</div>
				<div class="product-reviews-summary empty">
					<div class="meta-actions">
						<a class="">Thương hiệu: <span>Khác</span>
						</a> | <a class="">Danh mục: <span>Trẻ em</span></a> | <a class="">MSP:
							<span></span>
						</a>
					</div>
				</div>
				<div class="product-info-price">
					<div class="price-box price-final_price">
						<span class="special-price"> <span
							class="price-container price-final_price tax weee"> <span
								class="price-label">Special Price</span> <span
								class="price-wrapper "> <span
									class="price tp_product_detail_price">${product.price }</span>
							</span>
						</span>
						</span>
					</div>
					
					<div class="product-info-stock-sku">
						<div class="stock available" title="Availability">
							<span class="label">Tình trạng:</span> <span>Còn hàng</span>
						</div>		
					</div>		
				</div>
				<div class="value">
						${product.detail_description }
						</div>
				<div class="product-add-form">
					<div class="product-options-wrapper" id="product-options-wrapper">
						<div class="fieldset">
							<div class="attr"></div>
						</div>
					</div>
					<div class="product-options-bottom">
						<div class="box-tocart">
							<div class="fieldset">
								<div class="field qty">
									<label class="label" for="qty"><span>Qty:</span></label>
									<div class="control">
										<input type="number" name="qty" id="qty" maxlength="10"
											max="5000" min="1" value="1"
											class="input-text qty qty-number">
										<div class="qty-changer">
											<a href="javascript:" class="qty-inc qtt-plus"><i
												class="porto-icon-up-dir"></i></a> <a href="javascript:"
												class="qty-dec qtt-minus"><i class="porto-icon-down-dir"></i></a>
										</div>
									</div>
								</div>
								<div class="actions">
									<button type="button" psid="10392469" selId="10392469"
										class="tp_button btn action primary tocart addToCart btnAddToCart"
										ck="1">Mua ngay</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="clearer"></div>
			<div class="product info detailed ">
				<div class="product data items " role="tablist">
					<div class="data item title active"
						id="tab-label-product.info.description">
						<a class="data switch" href="javascript:"
							data-href="#product-info-description"> <span>Thông tin</span>
						</a>
					</div>
					<div class="data item content" id="product-info-description">
						<div class="product attribute description">
							<div class="value"></div>
						</div>
					</div>
					<div class="data item title tp_product_detail_comment"
						id="tab-label-reviews">
						<a class="data switch" href="javascript:" data-href="#reviews">
							<span>Bình luận</span>
						</a>
					</div>
					<div class="data item content" id="reviews" role="tabpanel"
						aria-hidden="true" style="display: none;">
						<div class="block review-add">
							<div class="block-content">


								<div
									class="fb-comments fb_iframe_widget fb_iframe_widget_fluid_desktop"
									data-href="http://t0250.store.nhanh.vn/mat-calang-bentley-vios-p10392467.html"
									data-numposts="5" fb-xfbml-state="rendered"
									fb-iframe-plugin-query="app_id=&amp;container_width=0&amp;height=100&amp;href=http%3A%2F%2Ft0250.store.nhanh.vn%2Fmat-calang-bentley-vios-p10392467.html&amp;locale=vi_VN&amp;numposts=5&amp;sdk=joey&amp;version=v2.12&amp;width=550">
									<span
										style="vertical-align: bottom; width: 550px; height: 204px;"><iframe
											name="f294f22133f8604" width="550px" height="100px"
											data-testid="fb:comments Facebook Social Plugin"
											title="fb:comments Facebook Social Plugin" frameborder="0"
											allowtransparency="true" allowfullscreen="true"
											scrolling="no" allow="encrypted-media"
											src="https://www.facebook.com/v2.12/plugins/comments.php?app_id=&amp;channel=https%3A%2F%2Fstaticxx.facebook.com%2Fx%2Fconnect%2Fxd_arbiter%2F%3Fversion%3D46%23cb%3Dfa9c46514ca59%26domain%3Dt0250.store.nhanh.vn%26origin%3Dhttp%253A%252F%252Ft0250.store.nhanh.vn%252Ff876b2a55adef4%26relation%3Dparent.parent&amp;container_width=0&amp;height=100&amp;href=http%3A%2F%2Ft0250.store.nhanh.vn%2Fmat-calang-bentley-vios-p10392467.html&amp;locale=vi_VN&amp;numposts=5&amp;sdk=joey&amp;version=v2.12&amp;width=550"
											style="border: none; visibility: visible; width: 550px; height: 204px;"
											class=""></iframe></span>
								</div>


							</div>
						</div>
					</div>


				</div>
			</div>
		</div>

		<div class="sidebar sidebar-additional"
			style="position: relative; top: 0px;">
			<div class="custom-block custom-block-1">
				<div>
					<img src="img/icon-shipped.png" alt="">
					<h3>
						Miễn phí <br> vận chuyển
					</h3>
				</div>
				<div>
					<img src="img/icon-us-dollar.png" alt="">
					<h3>
						Đổi trả <br> miễn phí
					</h3>
				</div>
				<div>
					<img src="img/icon-online-support.png" alt="" />
					<h3>
						Hỗ trợ <br> trực tuyến 24/7
					</h3>
				</div>
			</div>
		</div>
	</div>
</main>
<div class="main-upsell-product-detail tp_product_detail_related">
	<div class="container">
		<div class="block upsell" data-limit="0" data-shuffle="0">
			<div class="clearer"></div>
			<div class="block-title title">
				<strong id="block-upsell-heading">Sản phẩm liên quan</strong>
			</div>
			<div class="block-content content">
				<div class="products wrapper grid products-grid products-upsell">
					<div
						class="products list items product-items owl-carousel owl-middle-narrow owl-theme owl-loaded owl-drag">
						<div class="item product product-item" style="">
							<div class="product-item-info ">
								<div class="product-labels">
									<div class="product-label sale-label">-50%</div>
								</div>
								<a href="/tai-nghe-full-beat-p10392470.html"
									class="product photo product-item-photo"> <img
									class="product-image-photo default_image lazyload"
									data-sizes="auto"
									data-src="https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20181206/7_13_600x600.jpg"
									alt="Tai nghe full beat">
								</a>
								<div class="product details product-item-details">
									<strong class="product name product-item-name"> <a
										class="product-item-link tp_product_name"
										title="Tai nghe full beat"
										href="/tai-nghe-full-beat-p10392470.html">Tai nghe full
											beat</a>
									</strong>
									<div class="price-box price-final_price">
										<span class="special-price"> <span
											class="price-container price-final_price tax weee"> <span
												class="price-label">Special Price</span> <span
												class="price-wrapper "> <span
													class="price tp_product_price">1,500,000</span>
											</span>
										</span>
										</span> <span class="old-price"> <span
											class="price-container price-final_price tax weee"> <span
												class="price-label">was</span> <span class="price-wrapper ">
													<span class="price tp_product_price_old">3,000,000</span>
											</span>
										</span>
										</span>
									</div>
								</div>
							</div>
						</div>
						<div class="item product product-item" style="">
							<div class="product-item-info ">
								<div class="product-labels">
									<div class="product-label sale-label">-63%</div>
								</div>
								<a href="/mat-calang-bentley-cruze-p10392468.html"
									class="product photo product-item-photo"> <img
									class="product-image-photo default_image lazyload"
									data-sizes="auto"
									data-src="https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20181206/18_3_2_600x600.jpg"
									alt="Mặt calang bentley Cruze">
								</a>
								<div class="product details product-item-details">
									<strong class="product name product-item-name"> <a
										class="product-item-link tp_product_name"
										title="Mặt calang bentley Cruze"
										href="/mat-calang-bentley-cruze-p10392468.html">Mặt calang
											bentley Cruze</a>
									</strong>
									<div class="price-box price-final_price">
										<span class="special-price"> <span
											class="price-container price-final_price tax weee"> <span
												class="price-label">Special Price</span> <span
												class="price-wrapper "> <span
													class="price tp_product_price">11,000</span>
											</span>
										</span>
										</span> <span class="old-price"> <span
											class="price-container price-final_price tax weee"> <span
												class="price-label">was</span> <span class="price-wrapper ">
													<span class="price tp_product_price_old">30,000</span>
											</span>
										</span>
										</span>
									</div>
								</div>
							</div>
						</div>
						<div class="item product product-item" style="">
							<div class="product-item-info ">
								<div class="product-labels"></div>
								<a href="/mat-calang-bentley-vios-p10392467.html"
									class="product photo product-item-photo"> <img
									class="product-image-photo default_image lazyload"
									data-sizes="auto"
									data-src="https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20181206/16_3_2_600x600.jpg"
									alt="Mặt calang bentley Vios">
								</a>
								<div class="product details product-item-details">
									<strong class="product name product-item-name"> <a
										class="product-item-link tp_product_name"
										title="Mặt calang bentley Vios"
										href="/mat-calang-bentley-vios-p10392467.html">Mặt calang
											bentley Vios</a>
									</strong>
									<div class="price-box price-final_price">
										<span class="special-price"> <span
											class="price-container price-final_price tax weee"> <span
												class="price-label">Special Price</span> <span
												class="price-wrapper "> <span
													class="price tp_product_price">1,250,000</span>
											</span>
										</span>
										</span>
									</div>
								</div>
							</div>
						</div>
						<div class="item product product-item" style="">
							<div class="product-item-info ">
								<div class="product-labels"></div>
								<a href="/dong-ho-nam-nu-den-vien-vang-p10392466.html"
									class="product photo product-item-photo"> <img
									class="product-image-photo default_image lazyload"
									data-sizes="auto"
									data-src="https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20181207/SIR66_5201_1__600x600.jpg"
									alt="Đồng hồ nam nữ đen viền vàng">
								</a>
								<div class="product details product-item-details">
									<strong class="product name product-item-name"> <a
										class="product-item-link tp_product_name"
										title="Đồng hồ nam nữ đen viền vàng"
										href="/dong-ho-nam-nu-den-vien-vang-p10392466.html">Đồng
											hồ nam nữ đen viền vàng</a>
									</strong>
									<div class="price-box price-final_price">
										<span class="special-price"> <span
											class="price-container price-final_price tax weee"> <span
												class="price-label">Special Price</span> <span
												class="price-wrapper "> <span
													class="price tp_product_price">1,250,000</span>
											</span>
										</span>
										</span>
									</div>
								</div>
							</div>
						</div>
						<div class="item product product-item" style="">
							<div class="product-item-info ">
								<div class="product-labels"></div>
								<a href="/mat-calang-ke-ngang-cx5-ca-tren-duoi-p10392465.html"
									class="product photo product-item-photo"> <img
									class="product-image-photo default_image lazyload"
									data-sizes="auto"
									data-src="https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20181206/15_1_2_600x600.jpg"
									alt="Mặt calang kẻ ngang CX5 cả trên + dưới">
								</a>
								<div class="product details product-item-details">
									<strong class="product name product-item-name"> <a
										class="product-item-link tp_product_name"
										title="Mặt calang kẻ ngang CX5 cả trên + dưới"
										href="/mat-calang-ke-ngang-cx5-ca-tren-duoi-p10392465.html">Mặt
											calang kẻ ngang CX5 cả trên + dưới</a>
									</strong>
									<div class="price-box price-final_price">
										<span class="special-price"> <span
											class="price-container price-final_price tax weee"> <span
												class="price-label">Special Price</span> <span
												class="price-wrapper "> <span
													class="price tp_product_price">1,100,000</span>
											</span>
										</span>
										</span>
									</div>
								</div>
							</div>
						</div>
						<div class="item product product-item" style="">
							<div class="product-item-info ">
								<div class="product-labels">
									<div class="product-label sale-label">-24%</div>
								</div>
								<a
									href="/mat-calang-ke-ngang-sorento-ca-tren-duoi-p10392464.html"
									class="product photo product-item-photo"> <img
									class="product-image-photo default_image lazyload"
									data-sizes="auto"
									data-src="https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20181206/11_1_1_1_600x600.jpg"
									alt="Mặt calang kẻ ngang Sorento cả trên + dưới">
								</a>
								<div class="product details product-item-details">
									<strong class="product name product-item-name"> <a
										class="product-item-link tp_product_name"
										title="Mặt calang kẻ ngang Sorento cả trên + dưới"
										href="/mat-calang-ke-ngang-sorento-ca-tren-duoi-p10392464.html">Mặt
											calang kẻ ngang Sorento cả trên + dưới</a>
									</strong>
									<div class="price-box price-final_price">
										<span class="special-price"> <span
											class="price-container price-final_price tax weee"> <span
												class="price-label">Special Price</span> <span
												class="price-wrapper "> <span
													class="price tp_product_price">950,000</span>
											</span>
										</span>
										</span> <span class="old-price"> <span
											class="price-container price-final_price tax weee"> <span
												class="price-label">was</span> <span class="price-wrapper ">
													<span class="price tp_product_price_old">1,250,000</span>
											</span>
										</span>
										</span>
									</div>
								</div>
							</div>
						</div>
						<div class="item product product-item" style="">
							<div class="product-item-info ">
								<div class="product-labels"></div>
								<a href="/mat-calang-ke-ngang-yaris-duoi-p10392463.html"
									class="product photo product-item-photo"> <img
									class="product-image-photo default_image lazyload"
									data-sizes="auto"
									data-src="https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20181206/gia__y_nike_air_max_90_chi__nh_ha__ng_7_600x600_600x600.jpg"
									alt="Mặt calang kẻ ngang Yaris dưới">
								</a>
								<div class="product details product-item-details">
									<strong class="product name product-item-name"> <a
										class="product-item-link tp_product_name"
										title="Mặt calang kẻ ngang Yaris dưới"
										href="/mat-calang-ke-ngang-yaris-duoi-p10392463.html">Mặt
											calang kẻ ngang Yaris dưới</a>
									</strong>
									<div class="price-box price-final_price">
										<span class="special-price"> <span
											class="price-container price-final_price tax weee"> <span
												class="price-label">Special Price</span> <span
												class="price-wrapper "> <span
													class="price tp_product_price">950,000</span>
											</span>
										</span>
										</span>
									</div>
								</div>
							</div>
						</div>
						<div class="item product product-item" style="">
							<div class="product-item-info ">
								<div class="product-labels"></div>
								<a href="/mat-calang-ke-ngang-altis-duoi-p10392462.html"
									class="product photo product-item-photo"> <img
									class="product-image-photo default_image lazyload"
									data-sizes="auto"
									data-src="https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20181206/08_3_1_600x600.jpg"
									alt="Mặt calang kẻ ngang Altis dưới">
								</a>
								<div class="product details product-item-details">
									<strong class="product name product-item-name"> <a
										class="product-item-link tp_product_name"
										title="Mặt calang kẻ ngang Altis dưới"
										href="/mat-calang-ke-ngang-altis-duoi-p10392462.html">Mặt
											calang kẻ ngang Altis dưới</a>
									</strong>
									<div class="price-box price-final_price">
										<span class="special-price"> <span
											class="price-container price-final_price tax weee"> <span
												class="price-label">Special Price</span> <span
												class="price-wrapper "> <span
													class="price tp_product_price">950,000</span>
											</span>
										</span>
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="main-upsell-product-detail tp_product_detail_history">
	<div class="container">
		<div class="block upsell" data-limit="0" data-shuffle="0">
			<div class="clearer"></div>
			<div class="block-title title">
				<strong id="block-upsell-heading">Sản phẩm đã xem</strong>
			</div>
			<div class="block-content content">
				<div class="products wrapper grid products-grid products-upsell">
					<div
						class="products list items product-items owl-carousel owl-middle-narrow owl-theme owl-loaded owl-drag">
						<div class="item product product-item" style="">
							<div class="product-item-info ">
								<div class="product-labels">
									<div class="product-label sale-label">-50%</div>
								</div>
								<a href="/tai-nghe-full-beat-p10392470.html"
									class="product photo product-item-photo"> <img
									class="product-image-photo default_image lazyload"
									data-sizes="auto"
									data-src="https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20181206/7_13_600x600.jpg"
									alt="Tai nghe full beat">
								</a>
								<div class="product details product-item-details">
									<strong class="product name product-item-name"> <a
										class="product-item-link tp_product_name"
										title="Tai nghe full beat"
										href="/tai-nghe-full-beat-p10392470.html">Tai nghe full
											beat</a>
									</strong>
									<div class="price-box price-final_price">
										<span class="special-price"> <span
											class="price-container price-final_price tax weee"> <span
												class="price-label">Special Price</span> <span
												class="price-wrapper "> <span
													class="price tp_product_price">1,500,000</span>
											</span>
										</span>
										</span> <span class="old-price"> <span
											class="price-container price-final_price tax weee"> <span
												class="price-label">was</span> <span class="price-wrapper ">
													<span class="price tp_product_price_old">3,000,000</span>
											</span>
										</span>
										</span>
									</div>
								</div>
							</div>
						</div>
						<div class="item product product-item" style="">
							<div class="product-item-info ">
								<div class="product-labels"></div>
								<a href="/dong-ho-den-thoi-trang-litpo-p10392469.html"
									class="product photo product-item-photo"> <img
									class="product-image-photo default_image lazyload"
									data-sizes="auto"
									data-src="https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/ps/20181206/m301_4_copy_600x600_600x600.jpg"
									alt="Đồng hồ đen thời trang Litpo">
								</a>
								<div class="product details product-item-details">
									<strong class="product name product-item-name"> <a
										class="product-item-link tp_product_name"
										title="Đồng hồ đen thời trang Litpo"
										href="/dong-ho-den-thoi-trang-litpo-p10392469.html">Đồng
											hồ đen thời trang Litpo</a>
									</strong>
									<div class="price-box price-final_price">
										<span class="special-price"> <span
											class="price-container price-final_price tax weee"> <span
												class="price-label">Special Price</span> <span
												class="price-wrapper "> <span
													class="price tp_product_price">150,000</span>
											</span>
										</span>
										</span>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<style>
p {
	display: block;
}
</style>

