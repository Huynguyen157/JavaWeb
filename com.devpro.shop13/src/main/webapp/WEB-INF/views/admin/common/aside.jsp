<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<aside class="left-sidebar" data-sidebarbg="skin5">
				<!-- Sidebar scroll-->
				<div class="scroll-sidebar">
					<!-- Sidebar navigation-->
					<nav class="sidebar-nav">
						<ul id="sidebarnav" class="p-t-30">
							<li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/admin/list-product" aria-expanded="false"><i class="mdi mdi-border-inside"></i><span class="hide-menu">List Product</span></a></li>
							<li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/admin/list-user" aria-expanded="false"><i class="mdi mdi-border-inside"></i><span class="hide-menu">List User</span></a></li>
							<li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/admin/list-contact" aria-expanded="false"><i class="mdi mdi-border-inside"></i><span class="hide-menu">List Contact</span></a></li>
							<li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="/admin/list-bills" aria-expanded="false"><i class="mdi mdi-border-inside"></i><span class="hide-menu">List Bills</span></a></li>
							<li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-receipt"></i><span class="hide-menu">Forms </span></a>
								<ul aria-expanded="false" class="collapse  first-level">
									<li class="sidebar-item"><a href="/addproduct" class="sidebar-link"><i class="mdi mdi-note-outline"></i><span class="hide-menu"> Add Product </span></a></li>
									<li class="sidebar-item"><a href="/form-wizard" class="sidebar-link"><i class="mdi mdi-note-plus"></i><span class="hide-menu"> Form Wizard </span></a></li>
								</ul>
							</li>
							
							<li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-move-resize-variant"></i><span class="hide-menu">Addons </span></a>
								<ul aria-expanded="false" class="collapse  first-level">
									<li class="sidebar-item"><a href="/invoice" class="sidebar-link"><i class="mdi mdi-bulletin-board"></i><span class="hide-menu"> Invoice </span></a></li>
								</ul>
							</li>
							<li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-account-key"></i><span class="hide-menu">Authentication </span></a>
								<ul aria-expanded="false" class="collapse  first-level">
									<li class="sidebar-item"><a href="/register" class="sidebar-link"><i class="mdi mdi-all-inclusive"></i><span class="hide-menu"> Register </span></a></li>
								</ul>
							</li>
						</ul>
					</nav>
					<!-- End Sidebar navigation -->
				</div>
				<!-- End Sidebar scroll-->
			</aside>