<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- TagLibs -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="hotProduct">
	<span><b>SẢN PHẨM NỔI BẬT</b></span>
	<div class="contented">
		<div style="margin-left: 20px;" class="sanpham">
			<div class="anh">
				<img src="${pageContext.request.contextPath}/img/7_13_600x600.jpg">
			</div>
			<div class="titled">
				<a href="/details1" class="word">Tai nghe full beat</a>
			</div>
			<div class="price">
				<span> 950,000 <strike>1,250,000</strike>
				</span>
			</div>

		</div>
		<div class="sanpham">
			<div class="anh">
				<img
					src="${pageContext.request.contextPath}/img/m301_4_copy_600x600_600x600.jpg">
			</div>
			<div class="titled">
				<a href="/details" class="word">Đồng hồ đen thời trang Litpo</a>
			</div>
			<div class="price">
				<span> 1,250,000 </span>
			</div>
		</div>
		<div class="sanpham">
			<div class="anh">
				<img src="${pageContext.request.contextPath}/img/1.jpg">
			</div>
			<div class="titled">
				<a class="word">Mặt calang kẻ ngang Yaris dưới</a>
			</div>
			<div class="price">
				<span> 950,000 </span>
			</div>
		</div>
			<div class="sanpham">
				<div class="anh">
					<img src="${base}/img/33673/ps/20181206/20_4_3_600x600.jpg">
				</div>
				<div class="titled">
					<a class="word">Giày Da Cao Cấp</a>
				</div>

				<div class="price">
					<span>1,500,000
							<strike>2,000,000</strike>
					</span>
				</div>
			</div>
	</div>
</div>
