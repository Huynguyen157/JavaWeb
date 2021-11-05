<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<input type="hidden" id="checkStoreId" value="33673">
<div class="tp_header top-block-header hidden-xs">
	<div class="container">
		<div class="row">
			<div class="col-md-6 top-block-header-item" style="text-align: left;">
				<span style="margin-right: 25px;">Miễn phí đổi trả</span> <span
					style="margin-right: 25px;">Hỗ trợ hoàn tiền</span> <span>Tư
					vấn trực tuyến 24/7</span>
			</div>
			<div class="col-md-6 top-block-header-item"
				style="text-align: right;">
				<a href="/Subcribe" style="color: #fff; margin-right: 10px;"><i
					class="fa fa-user"></i> Đăng ký</a> <a href="/login"
					style="color: #fff; margin-right: 10px;"><i class="fa fa-lock"></i>
					Đăng nhập</a> <a href="/admin1"
					style="color: #fff; margin-right: 10px;"><i
					class="fas fa-users-cog"></i> Admin</a>
			</div>
		</div>
	</div>
</div>
<header class="header-container page-header type18 ">
	<div class="top-links-container">
		<div class="top-links container">
			<div class="top-links-inner">
				<div class="top-links-area">
					<ul>
						<li><a href="/product?show=hot">Nổi bật</a></li>
						<li><a href="/product">Hàng mới về</a></li>
						<li><a href="/promotion">Khuyến mại</a></li>
						<li><a href="/contact">Liên hệ</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="header content">
		<strong class="logo"> <a href="/"> <img
				src="https://storage.googleapis.com/cdn.nhanh.vn/store1/33673/store_1542859218_785.png"
				alt="Home" />
		</a>
		</strong>
		<div data-block="minicart" class="minicart-wrapper">
			<a class="action showcart"
				href="${pageContext.request.contextPath}/cart/view"> <span
				class="text">Cart</span> <span class="counter qty empty"> <span
					id="totalItemsInCart">${totalItems }</span> <span
					class="counter-label"></span>
			</span>
			</a>
			<div class="block block-minicart empty">
				<div id="minicart-content-wrapper"></div>
			</div>
		</div>
		<span data-action="toggle-nav" class="action nav-toggle"> <span>Toggle
				Nav</span>
		</span>
		<div class="block block-search">
			<div class="block block-title">
				<strong>Search</strong>
			</div>
			<div class="block block-content">
				<form class="form minisearch" id="search_mini_form"
					action="${base }/search" method="get">
					<div class="field search">
						<label class="label" for="search" data-role="minisearch-label">
							<span>Search</span>
						</label>
						<div class="control">
							<input id="search" type="text" name="searchText" value=""
								placeholder="Tìm kiếm..." class="input-text" maxlength="128" />
							<div id="search_autocomplete" class="search-autocomplete"></div>
							<div class="nested">
								<a class="action advanced" href=""> Advanced Search </a>
							</div>
						</div>
					</div>
					<div class="actions">
						<button type="submit" title="Search" class="action search">
							<span>Search</span>
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="sections nav-sections">
		<div class="section-items nav-sections-items">
			<div class="section-item-title nav-sections-item-title"
				data-role="collapsible">
				<a class="nav-sections-item-switch" data-toggle="switch"
					href="#store.menu">Menu</a>
			</div>
			<div class="tp_menu section-item-content nav-sections-item-content"
				id="store.menu" data-role="content">
				<nav class="navigation sw-megamenu" role="navigation">
					<ul class="navbar-list no-bullets tp_menu">
						<li class="tp_menu_item ui-menu-item level0 classic  "><a
							href="/" class="level-top tp_menu_item">Trang chủ</a></li>
						<li class="tp_menu_item ui-menu-item level0 classic  parent"><div
								class="open-children-toggle"></div> <a href="/danhmuc"
							class="level-top tp_menu_item">Nam</a>
							<div class="level0 submenu tp_menu">
								<div class="row">
									<ul class="subchildmenu">
										<li class="ui-menu-item level1"><a class="tp_menu_item"
											href="/ao-the-thao-pc263597.html"><span>Áo thể
													thao</span></a></li>
										<li class="ui-menu-item level1"><a class="tp_menu_item"
											href="/ao-nike-pc263598.html"><span>Áo Nike</span></a></li>
										<li class="ui-menu-item level1"><a class="tp_menu_item"
											href="/quan-jean-pc263599.html"><span>Quần Jean</span></a></li>
										<li class="ui-menu-item level1"><a class="tp_menu_item"
											href="/ao-polo-pc269834.html"><span>Áo Polo</span></a></li>
									</ul>
								</div>
							</div></li>
						<li class="tp_menu_item ui-menu-item level0 classic  parent"><div
								class="open-children-toggle"></div> <a href="/nu-pc263600.html"
							class="level-top tp_menu_item">Nữ</a>
							<div class="level0 submenu tp_menu">
								<div class="row">
									<ul class="subchildmenu">
										<li class="ui-menu-item level1"><a class="tp_menu_item"
											href="/quan-jean-pc263601.html"><span>Quần Jean</span></a></li>
										<li class="ui-menu-item level1"><a class="tp_menu_item"
											href="/vay-pc263602.html"><span>Váy</span></a></li>
										<li class="ui-menu-item level1"><a class="tp_menu_item"
											href="/set-do-pc269833.html"><span>Set đồ</span></a></li>
									</ul>
								</div>
							</div></li>
						<li class="tp_menu_item ui-menu-item level0 classic  "><a
							href="/tre-em-pc263603.html" class="level-top tp_menu_item">Trẻ
								em</a></li>
						<li class="tp_menu_item ui-menu-item level0 classic  parent"><div
								class="open-children-toggle"></div> <a
							href="/phu-kien-pc263604.html" class="level-top tp_menu_item">Phụ
								kiện</a>
							<div class="level0 submenu tp_menu">
								<div class="row">
									<ul class="subchildmenu">
										<li class="ui-menu-item level1"><a class="tp_menu_item"
											href="/dong-ho-pc263605.html"><span>Đồng hồ</span></a></li>
										<li class="ui-menu-item level1"><a class="tp_menu_item"
											href="/that-lung-pc263606.html"><span>Thắt lưng</span></a></li>
									</ul>
								</div>
							</div></li>
						<li class="tp_menu_item ui-menu-item level0 classic  "><a
							href="/tin-moi-nc7356.html" class="level-top tp_menu_item">Tin
								mới</a></li>
						<li class="tp_menu_item ui-menu-item level0 classic  "><a
							href="/gioi-thieu-nc7558.html" class="level-top tp_menu_item">Giới
								thiệu</a></li>
						<li class="tp_menu_item ui-menu-item level0 classic  "><a
							href="/huong-dan-nc7559.html" class="level-top tp_menu_item">Hướng
								dẫn</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</header>





