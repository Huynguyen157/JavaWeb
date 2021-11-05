<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!-- TagLibs -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<div class="panel widget-option" style="border:1px solid grey; width:200px;">
		<a href="/danhmuc" style="text-decoration: none;margin-left:20px;">Sản Phẩm</a>
		<!-- <div class="collapse show" id="categories"> -->
		<div class="collapse-content"style="margin-left:40px;">

			<c:forEach items="${categories}" var="c">

				<a style="text-decoration: none;"
					href="${base }/category/${c.getSeo()}">
					<div class="single-widget-opt">
						<span>${c.name}</span>
					</div>
				</a>

			</c:forEach>
		</div>
	
</div>

